<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Preview QR Code</title>
    <style>
        body {
            margin: 0;
            font-family: sans-serif;
        }

        .header {
            text-align: center;
            padding: 15px;
            background: #f8f9fa;
            border-bottom: 1px solid #ddd;
        }

        .btn-print {
            padding: 8px 15px;
            background: #007bff;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 4px;
        }

        iframe {
            width: 100%;
            height: calc(100vh - 80px);
            border: none;
        }
    </style>
</head>

<body>

    <div class="header">
        <h3>
            {{ $production->batch_number }} |
            {{ $production->product->product_name ?? '' }}
        </h3>

        <button class="btn-print" onclick="printPDF()">
            Print PDF
        </button>
    </div>

    <iframe id="pdf-preview" src="{{ route('product.export.qrcode', $production->id_production) }}">
    </iframe>

    <script>
        function printPDF() {
            document.getElementById('pdf-preview').contentWindow.print();
        }
    </script>

</body>

</html>
