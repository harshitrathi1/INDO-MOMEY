const https = require('https');

exports.handler = async function(event, context) {
    // CORS Headers ताकि कोई ब्राउज़र ब्लॉक न करे
    const headers = {
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Headers": "Content-Type",
        "Access-Control-Allow-Methods": "POST, OPTIONS",
        "Content-Type": "application/json"
    };

    if (event.httpMethod === "OPTIONS") {
        return { statusCode: 200, headers, body: "OK" };
    }

    if (event.httpMethod !== "POST") {
        return { statusCode: 405, headers, body: JSON.stringify({ error: "Method Not Allowed" }) };
    }

    try {
        const { amount, utr, txnId } = JSON.parse(event.body || "{}");

        const MERCHANT_ID = "75490543";
        const TOKEN = "900e69effc3147f49c36b09d0516f6f5";

        const options = {
            hostname: 'merchant.bharatpe.com',
            path: `/api/v1/merchants/${MERCHANT_ID}/transactions?limit=15`,
            method: 'GET',
            headers: {
                'token': TOKEN,
                'User-Agent': 'Mozilla/5.0'
            }
        };

        const checkBharatPe = () => new Promise((resolve, reject) => {
            const req = https.request(options, (res) => {
                let data = '';
                res.on('data', chunk => data += chunk);
                res.on('end', () => resolve(data));
            });
            req.on('error', err => reject(err));
            req.end();
        });

        const rawData = await checkBharatPe();
        let isVerified = false;

        try {
            const response = JSON.parse(rawData);
            if (response && response.data && response.data.transactions) {
                const matched = response.data.transactions.find(tx => {
                    const matchAmount = parseFloat(tx.amount) === parseFloat(amount);
                    const matchUTR = utr ? (String(tx.bankReferenceNo) === String(utr) || String(tx.rrn) === String(utr)) : true;
                    return matchAmount && matchUTR && tx.status === "SUCCESS";
                });

                if (matched) {
                    isVerified = true;
                }
            }
        } catch (e) {
            isVerified = false;
        }

        return {
            statusCode: 200,
            headers,
            body: JSON.stringify({
                verified: isVerified,
                message: isVerified ? "Payment Verified" : "Payment Not Found"
            })
        };

    } catch (error) {
        return {
            statusCode: 500,
            headers,
            body: JSON.stringify({ verified: false, error: error.message })
        };
    }
};
