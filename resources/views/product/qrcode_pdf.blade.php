<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>QR Code PDF</title>

    <style>
        body {
            font-family: sans-serif;
            margin: 20px;
        }

        h2 {
            text-align: center;
            margin: 15px 0;
            font-size: 20px;
        }

        .section-title {
            text-align: center;
            font-weight: bold;
            margin: 20px 0 10px 0;
            font-size: 18px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            text-align: center;
        }

        td {
            padding: 10px;
            width: 25%;
        }

        img {
            width: 150px;
            height: 150px;
        }

        .page-break {
            page-break-after: always;
        }
    </style>
</head>

<body>

    <h2>{{ $production->batch_number }} | {{ $production->product->product_name ?? '' }}</h2>

    @php
        function renderQrs($qrs)
        {
            $col = 0;
            $count = 0;

            echo '<table><tr>';

            foreach ($qrs as $qr) {
                // Generate QR SVG
                $svg = QrCode::format('svg')->size(150)->generate($qr->qrcode);

                $base64 = base64_encode($svg);

                echo '<td>
                <img src="data:image/svg+xml;base64,' .
                    $base64 .
                    '" />
              </td>';

                $col++;
                $count++;

                // Ganti baris tiap 4 kolom
                if ($col == 4) {
                    echo '</tr><tr>';
                    $col = 0;
                }

                // Page break tiap 16 QR
                if ($count % 16 == 0) {
                    echo '</tr></table>';
                    echo '<div class="page-break"></div>';
                    echo '<table><tr>';
                    $col = 0;
                }
            }

            echo '</tr></table>';
        }
    @endphp


    {{-- DUS --}}
    @if (!$qrsDus->isEmpty())
        <div class="section-title">-- DUS --</div>
        @php renderQrs($qrsDus); @endphp
    @endif


    {{-- BOTTLE --}}
    @if (!$qrsBottle->isEmpty())
        <div class="section-title">-- BOTTLE --</div>
        @php renderQrs($qrsBottle); @endphp
    @endif

</body>

</html>
