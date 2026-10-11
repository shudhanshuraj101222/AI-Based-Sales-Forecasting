
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AI-Based Sales Forecasting</title>

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

        .container {
            width: 100%;
            max-width: 550px;
            background: white;
            padding: 35px;
            border-radius: 18px;
            box-shadow: 0 12px 35px rgba(0,0,0,0.25);
        }

        h1 {
            color: #203864;
            text-align: center;
            font-size: 27px;
            margin-bottom: 10px;
        }

        .subtitle {
            text-align: center;
            color: #666;
            line-height: 1.6;
            margin-bottom: 28px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            color: #253858;
        }

        input {
            width: 100%;
            padding: 14px;
            border: 1px solid #ccd4e0;
            border-radius: 8px;
            font-size: 15px;
            outline-color: #2457c5;
        }

        button {
            width: 100%;
            margin-top: 22px;
            padding: 14px;
            border: none;
            border-radius: 8px;
            background: #2457c5;
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        button:hover {
            background: #183f99;
        }

        .example {
            margin-top: 18px;
            padding: 12px;
            background: #eef4ff;
            border-radius: 8px;
            color: #43516a;
            font-size: 13px;
            line-height: 1.6;
        }

        footer {
            text-align: center;
            margin-top: 25px;
            color: #777;
            font-size: 12px;
        }
    </style>
</head>

<body>
    <div class="container">

        <h1>AI-Based Sales Forecasting</h1>

        <p class="subtitle">
            Analyze historical sales data and predict
            future sales using Linear Regression.
        </p>

        <form action="${pageContext.request.contextPath}/forecast"
              method="post">

            <label for="sales">
                Enter Historical Sales Amounts (₹)
            </label>

            <input type="text"
                   id="sales"
                   name="sales"
                   placeholder="25000,28000,31000,35000"
                   pattern="[0-9., ]+"
                   title="Enter numbers separated by commas"
                   required>

            <button type="submit">
                Predict Future Sales
            </button>
        </form>

        <div class="example">
            <strong>Example:</strong><br>
            Enter sales values separated by commas:<br>
            25000, 28000, 31000, 35000
        </div>

        <footer>
            AI-Based Sales Forecasting Project
        </footer>

    </div>
</body>
</html>
