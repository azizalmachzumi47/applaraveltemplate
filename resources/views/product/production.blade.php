@extends('layouts.app')

@section('title', 'Production')

@section('content')
    <a href="" class="btn btn-primary mb-3" data-toggle="modal" data-target="#newProductionModal">
        Add New Production
    </a>
    <div class="row">
        <div class="col-md-12">
            <section class="panel">

                <div class="panel-body">
                    <div class="mb-3">
                        <a href="{{ route('product.production', ['filter' => 'today']) }}"
                            class="btn btn-outline-primary {{ $filter == 'today' ? 'active' : '' }}">Today</a>

                        <a href="{{ route('product.production', ['filter' => 'this_week']) }}"
                            class="btn btn-outline-primary {{ $filter == 'this_week' ? 'active' : '' }}">This Week</a>

                        <a href="{{ route('product.production', ['filter' => 'this_month']) }}"
                            class="btn btn-outline-primary {{ $filter == 'this_month' ? 'active' : '' }}">This Month</a>

                        <a href="{{ route('product.production', ['filter' => 'this_year']) }}"
                            class="btn btn-outline-primary {{ $filter == 'this_year' ? 'active' : '' }}">This Year</a>

                        <a href="{{ route('product.production', ['filter' => 'all']) }}"
                            class="btn btn-outline-secondary {{ $filter == 'all' ? 'active' : '' }}">ALL</a>
                    </div>
                    <br>
                    <table class="table table-bordered table-striped mb-none" id="datatable-default">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col" class="text-center">Product</th>
                                <th scope="col" class="text-center">Product Batch Code</th>
                                <th scope="col" class="text-center">Production Date</th>
                                <th scope="col" class="text-center">Expired Date</th>
                                <th scope="col" class="text-center">Qty</th>
                                <th scope="col" class="text-center">Nie</th>
                                <th scope="col" class="text-center">Type</th>
                                <th scope="col" class="text-center">Status</th>
                                <th scope="col" class="text-center">Users</th>
                                <th scope="col" class="text-center">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($production as $pdt)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>
                                        <strong>Name:</strong> {{ $pdt->product->product_name ?? '-' }} <br>
                                        <strong>Expired NIE:</strong> {{ $pdt->product->end_date ?? '-' }} <br>
                                        <strong>Price:</strong> {{ $pdt->product->price ?? '-' }}
                                    </td>
                                    <td>{{ $pdt->batch_number }}</td>
                                    <td>{{ $pdt->manufacture_date }}</td>
                                    <td>{{ $pdt->expired_date }}</td>
                                    <td>{{ $pdt->qty }}</td>
                                    <td>{{ $pdt->nie }}</td>
                                    <td>{{ $pdt->product->type }}</td>
                                    <td>

                                        <div class="w-100">

                                            {{-- STATUS BUTTON --}}
                                            <button
                                                class="btn btn-sm
                                                @if ((int) $pdt->status === 0) btn-danger
                                                @elseif((int) $pdt->status === 1)
                                                    btn-success
                                                @else
                                                    btn-secondary @endif"
                                                style="pointer-events: none; width:100%;">

                                                @if ((int) $pdt->status === 0)
                                                    OnProgress
                                                @elseif((int) $pdt->status === 1)
                                                    Final
                                                @else
                                                    Unknown
                                                @endif
                                            </button>

                                            {{-- PROGRESS BAR --}}
                                            <div class="progress" style="height:18px; margin-top:6px;">
                                                <div class="progress-bar" role="progressbar"
                                                    style="
                                                        width: {{ $pdt->progress }}%;
                                                        background-color:
                                                            @if ($pdt->progress == 100) #28a745
                                                            @elseif($pdt->progress >= 50) #ffc107
                                                            @else #dc3545 @endif;
                                                    ">
                                                    {{ $pdt->progress }}%
                                                </div>
                                            </div>

                                        </div>
                                    </td>
                                    <td>{{ $pdt->user->name ?? '-' }}</td>
                                    <td class="text-center align-middle">
                                        <div style="display: flex; flex-direction: column; gap: 6px; align-items: center;">

                                            <!-- BARIS ATAS: EDIT + DELETE -->
                                            <div style="display: flex; gap: 4px;">
                                                <button class="btn btn-warning btn-sm" data-toggle="modal"
                                                    data-target="#edit{{ $pdt->id_production }}">
                                                    <i class="fa fa-edit"></i>
                                                </button>

                                                <button class="btn btn-danger btn-sm" data-toggle="modal"
                                                    data-target="#delete{{ $pdt->id_production }}">
                                                    <i class="fa fa-trash-o"></i>
                                                </button>
                                            </div>

                                            <!-- BARIS BAWAH: EXPORT -->
                                            <div style="display: flex; gap: 4px; flex-wrap: wrap; justify-content: center;">
                                                <a href="{{ route('product.export.bottle', $pdt->id_production) }}"
                                                    class="btn btn-success btn-sm">
                                                    Export Bottle
                                                </a>

                                                <a href="{{ route('product.export.dus', $pdt->id_production) }}"
                                                    class="btn btn-info btn-sm">
                                                    Export Dus
                                                </a>
                                            </div>

                                            <div style="display: flex; gap: 4px; flex-wrap: wrap; justify-content: center;">
                                                <button type="button" class="btn btn-primary btn-sm mt-1"
                                                    onclick="openPreview({{ $pdt->id_production }})">
                                                    Preview QR Code PDF
                                                </button>
                                            </div>

                                        </div>
                                    </td>

                                </tr>
                            @endforeach
                        </tbody>
                    </table>

                </div>
            </section>
        </div>

    </div>

    <!-- Modal -->
    <div class="modal fade" id="newProductionModal" tabindex="-1" role="dialog" aria-labelledby="newProductionModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Add New Production</h5>
                    <button type="button" class="close" data-dismiss="modal">
                        <span>&times;</span>
                    </button>
                </div>

                <form action="{{ route('product.addproduction') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="modal-body">

                        <div class="form-group">
                            <label for="batch_number">Production Batch Code</label>
                            <input type="text" class="form-control" name="batch_number" id="batch_number"
                                placeholder="Production Batch Code" required>

                            <small id="batchInfo"></small>
                        </div>

                        <div class="form-group">
                            <label for="id_product">Product Name</label>
                            <select class="form-control select2" name="id_product" id="id_product" required>
                                <option value="">-- Select Product --</option>
                                @foreach ($products as $prd)
                                    <option value="{{ $prd->id_product }}" data-nie="{{ $prd->nie }}"
                                        data-qty="{{ $prd->qty }}">
                                        {{ $prd->product_name }}
                                    </option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="manufacture_date">Manufacture Date</label>
                            <input type="date" class="form-control" name="manufacture_date" required>
                        </div>

                        <div class="form-group">
                            <label for="expired_date">Expired Date</label>
                            <input type="date" class="form-control" name="expired_date" required>
                        </div>

                        <div class="form-group">
                            <label for="qty">Qty</label>
                            <input type="number" class="form-control" name="qty" id="qty" placeholder="Qty"
                                required>
                        </div>

                        <div class="form-group">
                            <label for="nie">NIE</label>
                            <input type="text" class="form-control" name="nie" id="nie" readonly>
                        </div>

                        <div class="form-group" hidden>
                            <label for="status">Status</label>
                            <input type="text" class="form-control" name="status" placeholder="Status">
                        </div>

                        <div class="form-group">
                            <label>Users</label>
                            <input type="text" class="form-control" value="{{ Auth::user()->name }}" readonly>

                            <input type="hidden" name="users" value="{{ Auth::user()->id }}">
                        </div>

                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Add</button>
                    </div>
                </form>

            </div>
        </div>
    </div>


    <!-- Modal Edit -->
    @foreach ($production as $pdt)
        <div class="modal fade" id="edit{{ $pdt->id_production }}" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-header">
                        <h5 class="modal-title">Edit Product</h5>
                        <button type="button" class="close" data-dismiss="modal">
                            <span>&times;</span>
                        </button>
                    </div>

                    <form action="{{ route('product.editproduction', $pdt->id_production) }}" method="POST"
                        enctype="multipart/form-data">
                        @csrf
                        @method('PUT')

                        <div class="modal-body">

                            <div class="form-group">
                                <label for="batch_number">Production Batch Code</label>
                                <input type="text" class="form-control" name="batch_number" id="batch_number"
                                    value="{{ $pdt->batch_number }}" placeholder="Production Batch Code" readonly>
                                <small id="batchInfo"></small>
                            </div>

                            <div class="form-group">
                                <label for="id_product">Product Name</label>
                                <select class="form-control select2" name="id_product" id="id_product" required>
                                    <option value="">-- Select Product --</option>
                                    @foreach ($products as $prd)
                                        <option value="{{ $prd->id_product }}" data-nie="{{ $prd->nie }}"
                                            data-qty="{{ $prd->qty }}"
                                            {{ $prd->id_product == $pdt->id_product ? 'selected' : '' }}>
                                            {{ $prd->product_name }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="manufacture_date">Manufacture Date</label>
                                <input type="date" class="form-control" name="manufacture_date"
                                    value="{{ $pdt->manufacture_date }}" required>
                            </div>

                            <div class="form-group">
                                <label for="expired_date">Expired Date</label>
                                <input type="date" class="form-control" name="expired_date"
                                    value="{{ $pdt->expired_date }}" required>
                            </div>

                            <div class="form-group">
                                <label for="qty">Qty</label>
                                <input type="number" class="form-control" name="qty" id="qty"
                                    value="{{ $pdt->qty }}" placeholder="Qty" required>
                            </div>

                            <div class="form-group">
                                <label for="nie">NIE</label>
                                <input type="text" class="form-control" name="nie" id="nie"
                                    value="{{ $pdt->nie }}" readonly>
                            </div>

                            <div class="form-group" hidden>
                                <label for="status">Status</label>
                                <input type="text" class="form-control" name="status" value="{{ $pdt->status }}"
                                    placeholder="Status">
                            </div>

                            <div class="form-group">
                                <label>Users</label>
                                <input type="text" class="form-control" value="{{ Auth::user()->name }}" readonly>
                                <input type="hidden" name="users" value="{{ $pdt->users }}">
                            </div>

                        </div>

                        <div class="modal-footer">
                            <button class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button class="btn btn-primary">Save Changes</button>
                        </div>

                    </form>

                </div>
            </div>
        </div>
    @endforeach



    <!-- Modal Delete -->
    @foreach ($production as $pdt)
        <div class="modal fade" id="delete{{ $pdt->id_production }}" tabindex="-1" role="dialog"
            aria-labelledby="deleteModalLabel{{ $pdt->id_production }}" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="deleteModalLabel{{ $pdt->id_production }}">Delete
                            {{ $pdt->batch_number }}</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <h5>Are you sure you want to delete this data...?</h5>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <a href="{{ route('product.deleteproduction', $pdt->id_production) }}"
                            class="btn btn-danger">Delete</a>
                    </div>
                </div>
            </div>
        </div>
    @endforeach


    <script>
        window.addEventListener('load', function() {

            // INIT SELECT2
            if (typeof $.fn.select2 !== 'undefined') {
                $('#id_product').select2({
                    placeholder: "Search Product...",
                    width: '100%'
                });
            } else {
                console.log('Select2 belum ke-load');
            }

            // EVENT CHANGE PRODUCT
            $('#id_product').on('change', function() {

                let selected = $(this).find(':selected');

                let nie = selected.data('nie');
                let qty = selected.data('qty');

                // SET VALUE
                $('#nie').val(nie ? nie : '');
                $('#qty').val(qty ? qty : '');

            });

        });
    </script>



    <script>
        window.addEventListener('load', function() {

            const batchInput = document.getElementById('batch_number');
            const info = document.getElementById('batchInfo');

            batchInput.addEventListener('keyup', function() {

                let batchNumber = this.value.trim();

                if (batchNumber.length < 2) {
                    info.innerHTML = '';
                    return;
                }

                fetch("{{ route('check.batch.number') }}?batch_number=" + batchNumber)
                    .then(response => response.json())
                    .then(data => {

                        if (data.exists) {
                            info.innerHTML = 'Production Batch Code Sudah Digunakan';
                            info.style.color = 'red';
                        } else {
                            info.innerHTML = 'Production Batch Code Tersedia';
                            info.style.color = 'green';
                        }

                    })
                    .catch(error => {
                        console.log('ERROR FETCH:', error);
                    });

            });

        });
    </script>

    <script>
        function openPreview(id) {
            var previewUrl = "{{ url('product/export-qrcode/preview') }}/" + id;

            var printWindow = window.open(
                previewUrl,
                'QRPreview',
                'width=1000,height=800,scrollbars=yes,resizable=yes'
            );

            if (printWindow) {
                printWindow.focus();
            } else {
                alert("Popup diblokir oleh browser. Izinkan popup untuk website ini.");
            }
        }
    </script>


@endsection
