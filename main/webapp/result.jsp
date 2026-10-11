
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Sales Forecast Result</title>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #101827, #243b64, #176b87);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .result-card {
            width: 100%;
            max-width: 520px;
            background: white;
            padding: 40px 30px;
            border-radius: 18px;
            text-align: center;
            box-shadow: 0 12px 35px rgba(0,0,0,0.25);
        }

        .icon {
            font-size: 55px;
            margin-bottom: 15px;
        }

        h1 {
            color: #203864;
            font-size: 27px;
        }

        .description {
            color: #666;
            line-height: 1.6;
        }

        .amount-box {
            background: #edf7f0;
            border: 1px solid #c7e7d0;
            border-radius: 12px;
            padding: 24px 10px;
            margin: 25px 0;
        }

        .amount-label {
            color: #477157;
            font-size: 14px;
        }

        .amount {
            color: #168447;
            font-size: 32px;
            font-weight: bold;
            margin-top: 12px;
            overflow-wrap: anywhere;
        }

        .button {
            display: inline-block;
            padding: 13px 22px;
            background: #2457c5;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-weight: bold;
        }

        .button:hover {
            background: #183f99;
        }

        .note {
            margin-top: 22px;
            color: #777;
            font-size: 12px;
        }
    </style>
</head>

<body>
    <div class="result-card">

        <div class="icon">&#128200;</div>

        <h1>Sales Forecast Result</h1>

        <p class="description">
            Your sales prediction has been calculated
            using Linear Regression.
        </p>

        <div class="amount-box">
            <div class="amount-label">
                Predicted Next-Period Sales
            </div>

            <div class="amount">
                &#8377;<%= String.format("%.2f",
                    (Double) request.getAttribute("prediction")) %>
            </div>
        </div>

        <a class="button" href="index.jsp">
            Back to Dashboard
        </a>

        <div class="note">
            AI-Based Sales Forecasting Project
        </div>

    </div>
</body>
</html>
