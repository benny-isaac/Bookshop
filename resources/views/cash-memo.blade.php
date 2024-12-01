<!DOCTYPE html>
<html>
<head>
    <title>Cash Memo</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
        .memo-container {
            width: 70%;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .memo-header {
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
        }
        .memo-details table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        .memo-details table, th, td {
            border: 1px solid #ddd;
        }
        .memo-details th, td {
            padding: 10px;
            text-align: center;
        }
        .memo-footer {
            text-align: center;
            font-size: 16px;
        }
    </style>
</head>
<body>

    <div class="memo-container">
        <div class="memo-header">
            <h2 style="color:teal;">Creative Learning Publishings.inc</h2>
            <h3>Cash Memo</h3>
            <p>Order ID: {{ $sale->id }}</p>
            <p>Store: {{ $sale->store }}</p>
            <small class="memo-footer">Issued To: {{ $sale->name }}</small>
        </div>

        <div class="memo-details">
            <table>
                <tr>
                    <th>Book Title</th>
                    <th>Unit Price</th>
                    <th>Quantity</th>
                    <th>Total Price</th>
                    <th>Date</th>
                </tr>
                <tr>
                    <td>{{ $sale->title }}</td>
                    <td>${{ $sale->price }}</td>
                    <td>{{ $sale->quantity }}</td>
                    <td>${{ number_format($sale->totalPrice, 2) }}</td>
                    <td>{{ $sale->date }}</td>
                </tr>
            </table>
        </div>

        <div class="memo-footer">
            <p>Thank you for your purchase!</p>
            <p>Customer Email: {{ $sale->email }}</p>
        </div>
    </div>

</body>
</html>
