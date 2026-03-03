@extends('layouts.app')

@section('title', 'Product')

@section('content')
    <a href="" class="btn btn-primary mb-3" data-toggle="modal" data-target="#newProductModal">
        Add New Product
    </a>
    <div class="row">
        <div class="col-md-12">
            <section class="panel">

                <div class="panel-body">

                    <table class="table table-bordered table-striped mb-none" id="datatable-default">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Product Name</th>
                                <th scope="col">NIE</th>
                                <th scope="col">Start Date</th>
                                <th scope="col">End Date</th>
                                <th scope="col">Description</th>
                                <th scope="col">Price</th>
                                <th scope="col">Image</th>
                                <th scope="col">Type</th>
                                <th scope="col">Qty</th>
                                <th scope="col">Packaging</th>
                                <th scope="col">Composition</th>
                                <th scope="col">Users</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($product as $prod)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $prod->product_name }}</td>
                                    <td>{{ $prod->nie }}</td>
                                    <td>{{ $prod->start_date }}</td>
                                    <td>{{ $prod->end_date }}</td>
                                    <td>{{ $prod->description }}</td>
                                    <td>{{ $prod->price }}</td>
                                    <td>
                                        <img src="{{ asset('img_product/' . $prod->image) }}" width="80" alt="image">
                                    </td>
                                    <td>{{ $prod->type }}</td>
                                    <td>{{ $prod->qty }}</td>
                                    <td>{{ $prod->packaging }}</td>
                                    <td>{{ $prod->composition }}</td>
                                    <td>{{ $prod->user->name ?? '-' }}</td>

                                    <td>
                                        <button class="btn btn-warning btn-sm" style="margin-bottom:10px;"
                                            data-toggle="modal" data-target="#edit{{ $prod->id_product }}">
                                            <i class="fa fa-edit"></i>
                                        </button>

                                        <button class="btn btn-danger btn-sm" data-toggle="modal"
                                            data-target="#delete{{ $prod->id_product }}">
                                            <i class="fa fa-trash-o"></i>
                                        </button>
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
    <div class="modal fade" id="newProductModal" tabindex="-1" role="dialog" aria-labelledby="newProductModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Add New Product</h5>
                    <button type="button" class="close" data-dismiss="modal">
                        <span>&times;</span>
                    </button>
                </div>

                <form action="{{ route('product.addproduct') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="modal-body">

                        <div class="form-group">
                            <label for="product_name">Product Name</label>
                            <input type="text" class="form-control" name="product_name" placeholder="Product Name"
                                required>
                        </div>

                        <div class="form-group">
                            <label for="nie">NIE</label>
                            <input type="text" class="form-control" name="nie" placeholder="NIE" required>
                        </div>

                        <div class="form-group">
                            <label for="start_date">Start Date</label>
                            <input type="date" class="form-control" name="start_date" required>
                        </div>

                        <div class="form-group">
                            <label for="end_date">End Date</label>
                            <input type="date" class="form-control" name="end_date" required>
                        </div>

                        <div class="form-group">
                            <label for="description">Description</label>
                            <textarea name="description" class="form-control" rows="3" placeholder="Description" required></textarea>
                        </div>

                        <div class="form-group">
                            <label for="price">Price</label>
                            <input type="number" class="form-control" name="price" placeholder="Price" required>
                        </div>

                        <div class="form-group">
                            <label for="image">Image</label>
                            <input type="file" class="form-control" id="imageInput" name="image" accept="image/*"
                                onchange="previewImage()" required>
                        </div>

                        <!-- Preview -->
                        <div class="form-group text-center">
                            <img id="imagePreview" src="{{ asset('img_icon/botol_obat.png') }}"
                                style="max-width:80px; border-radius:8px;">
                        </div>

                        <div class="form-group">
                            <label for="type">Type</label>
                            <input type="text" class="form-control" name="type" placeholder="Type" required>
                        </div>

                        <div class="form-group">
                            <label for="qty">Qty</label>
                            <input type="number" class="form-control" name="qty" placeholder="Qty" required>
                        </div>

                        <div class="form-group">
                            <label for="packaging">Packaging</label>
                            <input type="text" class="form-control" name="packaging"
                                placeholder="DUS BOTOL PLASTIK @ 60 KAPLET" required>
                        </div>

                        <div class="form-group">
                            <label for="composition">Composition</label>
                            <input type="text" class="form-control" name="composition" placeholder="Composition"
                                required>
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
    @foreach ($product as $prod)
        <div class="modal fade" id="edit{{ $prod->id_product }}" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-header">
                        <h5 class="modal-title">Edit Product</h5>
                        <button type="button" class="close" data-dismiss="modal">
                            <span>&times;</span>
                        </button>
                    </div>

                    <form action="{{ route('product.editproduct', $prod->id_product) }}" method="POST"
                        enctype="multipart/form-data">
                        @csrf
                        @method('PUT')

                        <div class="modal-body">

                            <div class="form-group">
                                <label>Product Name</label>
                                <input type="text" class="form-control" name="product_name"
                                    value="{{ $prod->product_name }}" required>
                            </div>

                            <div class="form-group">
                                <label>NIE</label>
                                <input type="text" class="form-control" name="nie" value="{{ $prod->nie }}"
                                    required>
                            </div>

                            <div class="form-group">
                                <label>Start Date</label>
                                <input type="date" class="form-control" name="start_date"
                                    value="{{ $prod->start_date }}" required>
                            </div>

                            <div class="form-group">
                                <label>End Date</label>
                                <input type="date" class="form-control" name="end_date"
                                    value="{{ $prod->end_date }}" required>
                            </div>

                            <div class="form-group">
                                <label>Description</label>
                                <textarea class="form-control" name="description" rows="3">{{ $prod->description }}</textarea>
                            </div>

                            <div class="form-group">
                                <label>Price</label>
                                <input type="number" class="form-control" name="price" value="{{ $prod->price }}"
                                    required>
                            </div>

                            <div class="form-group">
                                <label>Image (optional)</label>
                                <input type="file" class="form-control" name="image" accept="image/*"
                                    onchange="previewImageEdit(event, {{ $prod->id_product }})">
                            </div>

                            <div class="form-group text-center">
                                <img id="previewEdit{{ $prod->id_product }}"
                                    src="{{ asset('img_product/' . $prod->image) }}"
                                    style="max-width:80px; border-radius:8px;">
                            </div>

                            <div class="form-group">
                                <label>Type</label>
                                <input type="text" class="form-control" name="type" value="{{ $prod->type }}">
                            </div>

                            <div class="form-group">
                                <label>Qty</label>
                                <input type="number" class="form-control" name="qty" value="{{ $prod->qty }}">
                            </div>

                            <div class="form-group">
                                <label>Packaging</label>
                                <input type="text" class="form-control" name="packaging"
                                    value="{{ $prod->packaging }}">
                            </div>

                            <div class="form-group">
                                <label>Composition</label>
                                <input type="text" class="form-control" name="composition"
                                    value="{{ $prod->composition }}">
                            </div>

                            <div class="form-group">
                                <label>Users</label>
                                <input type="text" class="form-control" value="{{ Auth::user()->name }}" readonly>
                                <input type="hidden" name="users" value="{{ $prod->users }}">
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
    @foreach ($product as $prod)
        <div class="modal fade" id="delete{{ $prod->id_product }}" tabindex="-1" role="dialog"
            aria-labelledby="deleteModalLabel{{ $prod->id_product }}" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="deleteModalLabel{{ $prod->id_product }}">Delete
                            {{ $prod->product_name }}</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <h5>Are you sure you want to delete this data...?</h5>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <a href="{{ route('product.deleteproduct', $prod->id_product) }}"
                            class="btn btn-danger">Delete</a>
                    </div>
                </div>
            </div>
        </div>
    @endforeach

    <script>
        function previewImage() {
            const input = document.getElementById('imageInput');
            const preview = document.getElementById('imagePreview');

            const file = input.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function(e) {
                    preview.src = e.target.result;
                }
                reader.readAsDataURL(file);
            }
        }
    </script>

    <script>
        function previewImageEdit(event, id) {
            const input = event.target;
            const preview = document.getElementById('previewEdit' + id);

            const file = input.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function(e) {
                    preview.src = e.target.result;
                }
                reader.readAsDataURL(file);
            }
        }
    </script>

@endsection
