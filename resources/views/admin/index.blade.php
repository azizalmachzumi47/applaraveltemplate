@extends('layouts.app')

@section('title', 'Admin')

@section('content')

    <div class="row">
        <div class="col-md-12">
            <section class="panel">

                <div class="panel-body">

                    <table class="table table-bordered table-striped mb-none" id="datatable-default">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Nama</th>
                                <th scope="col">E-mail</th>
                                <th scope="col">Verifikasi E-mail</th>
                                <th scope="col">Foto</th>
                                <th scope="col">Entitas</th>
                                <th scope="col">Terakhir Di Akses</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($users as $key => $user)
                                <tr>
                                    <td>{{ $key + 1 }}</td>
                                    <td>{{ $user->name }}</td>
                                    <td>{{ $user->email }}</td>
                                    <td>{{ $user->email_verified_at }}</td>
                                    <td>
                                        <img src="{{ $user->image && file_exists(public_path('images/' . $user->image))
                                            ? asset('images/' . $user->image)
                                            : asset('images/default.png') }}"
                                            alt="User Image" style="width: 50px; height: 50px; border-radius: 50%;">
                                    </td>
                                    <td>{{ $user->entitas }}</td>
                                    <td>{{ $user->updated_at }}</td>
                                    <td>
                                        <button class="btn btn-warning btn-sm" data-toggle="modal"
                                            data-target="#edit{{ $user->id }}">
                                            <i class="fa fa-edit"></i>
                                        </button>
                                        <button class="btn btn-danger btn-sm" data-toggle="modal"
                                            data-target="#delete{{ $user->id }}">
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

    <!-- Modal Edit -->
    @foreach ($users as $user)
        <div class="modal fade" id="edit{{ $user->id }}" tabindex="-1" role="dialog" aria-labelledby="editModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Edit User</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="{{ route('admin.edituser', $user->id) }}" method="POST"
                            enctype="multipart/form-data">
                            @csrf
                            @method('PUT')

                            <div class="form-group">
                                <label for="name">Nama</label>
                                <input type="text" class="form-control" name="name" value="{{ $user->name }}"
                                    required>
                            </div>

                            <div class="form-group">
                                <label for="email">E-mail</label>
                                <input type="email" class="form-control" name="email" value="{{ $user->email }}"
                                    required>
                            </div>

                            <div class="form-group">
                                <label for="verifikasi">Verifikasi E-mail</label>
                                <div class="d-flex">
                                    <input type="text" class="form-control" id="email_verified_at"
                                        name="email_verified_at"
                                        value="{{ old('email_verified_at', $user->email_verified_at ? \Carbon\Carbon::parse($user->email_verified_at)->format('Y-m-d\TH:i') : '') }}"
                                        onfocus="convertToDatetimeLocal(this)" placeholder="Kosongkan jika ingin menghapus">
                                </div>
                                <small class="form-text text-muted">Kosongkan jika ingin menghapus verifikasi email.</small>
                            </div>

                            <div class="form-group">
                                <label for="password">Password (Kosongkan jika tidak ingin diubah)</label>
                                <input type="password" name="password" class="form-control">
                            </div>

                            <div class="form-group">
                                <label for="image">Foto</label>
                                <input type="file" class="form-control-file" name="image" accept="image/*"
                                    onchange="previewImage(event, 'preview{{ $user->id }}')">
                                <img id="preview{{ $user->id }}" src="{{ asset('images/' . $user->image) }}"
                                    alt="Preview" style="width: 100px; height: 100px; margin-top: 10px;">
                            </div>

                            <div class="form-group">
                                <label for="role">Role</label>
                                <select class="form-control" name="role_id" required>
                                    <option value="">Pilih Role</option>
                                    @foreach ($roles as $role)
                                        <option value="{{ $role->id }}"
                                            {{ $user->role_id == $role->id ? 'selected' : '' }}>
                                            {{ $role->role }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group">
                                <label>Entitas</label>
                                <select class="form-control" name="entitas" required>
                                    @foreach (\App\Models\User::getEntitasOptions(auth()->user()->entitas == 'LG') as $key => $label)
                                        <option value="{{ $key }}"
                                            {{ old('entitas', $user->entitas) == $key ? 'selected' : '' }}>
                                            {{ $label }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Save changes</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    @endforeach

    <!-- Modal Delete -->
    @foreach ($users as $user)
        <div class="modal fade" id="delete{{ $user->id }}" tabindex="-1" role="dialog"
            aria-labelledby="deleteModalLabel{{ $user->id }}" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="deleteModalLabel{{ $user->id }}">Delete {{ $user->name }}</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <h5>Are you sure you want to delete this user?</h5>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <form action="{{ route('admin.destroy', $user->id) }}" method="POST">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    @endforeach

    <!-- JavaScript untuk Preview Gambar -->
    <script>
        function previewImage(event, previewId) {
            const reader = new FileReader();
            reader.onload = function() {
                document.getElementById(previewId).src = reader.result;
            }
            reader.readAsDataURL(event.target.files[0]);
        }
    </script>

    <script>
        function clearDate() {
            let input = document.getElementById('email_verified_at');
            input.type = 'text';
            input.value = '';
        }

        function convertToDatetimeLocal(input) {
            if (input.value === '') {
                input.type = 'datetime-local';
            }
        }
    </script>
@endsection
