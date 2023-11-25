<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Invoice</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        
        .invoice {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
        }
        
        .invoice h1 {
            text-align: center;
        }
        
        .invoice .header {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }
        
        .invoice .from,
        .invoice .to {
            width: 45%;
        }
        
        .invoice .from {
            float: left;
        }
        
        .invoice .to {
            float: right;
        }
        
        .invoice table {
            width: 100%;
            border-collapse: collapse;
        }
        
        .invoice th, .invoice td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }
        
        .invoice .total {
            margin-top: 20px;
            text-align: right;
        }
    </style>
</head>
<body>
    <div class="invoice">
        <h1>Invoice</h1>
        <div class="header">
            <div class="from">
                <strong>From:</strong><br>
                Gizmo Groove<br>
                Hazratganj<br>
                Lucknow,UP, 226001<br>
                Phone: (123) 456-7890<br>
                Email: your@email.com
            </div>
            <div class="to">
                <strong>To:</strong><br>
                Client Name<br>
                Client Address<br>
                City, State, Zip<br>
                Phone: (987) 654-3210<br>
                Email: client@email.com
            </div>
        </div>
        <table>
            <thead>
                <tr>
                    <th>Description</th>
                    <th>Quantity</th>
                    <th>Unit Price</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Item 1</td>
                    <td>2</td>
                    <td>50.00 <i class="fa fa-inr" aria-hidden="true"></i></td>
                    <td>100.00 <i class="fa fa-inr" aria-hidden="true"></i></td>
                </tr>
                <tr>
                    <td>Item 2</td>
                    <td>3</td>
                    <td>30.00 <i class="fa fa-inr" aria-hidden="true"></i></td>
                    <td>90.00 <i class="fa fa-inr" aria-hidden="true"></i></td>
                </tr>
            </tbody>
        </table>
        <div class="total">
            <p><strong>Total: 270.00 <i class="fa fa-inr" aria-hidden="true"></i>
</strong></p>
        </div>
    </div>
</body>
</html>