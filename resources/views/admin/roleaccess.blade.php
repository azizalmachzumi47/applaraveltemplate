@extends('layouts.app')

@section('title', 'Role')

@section('content')
    <h5>Role: {{ $role->role }}</h5>

    <div class="row">
        <div class="col-md-12">
            <section class="panel">

                <div class="panel-body">

                    <table class="table table-bordered table-striped mb-none" id="datatable-default">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Menu</th>
                                <th scope="col">Access</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($menu as $index => $m)
                                <tr>
                                    <th scope="row">{{ $index + 1 }}</th>
                                    <td>{{ $m->menu }}</td>
                                    <td>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox"
                                                {{ check_access($role->id, $m->id) ? 'checked' : '' }}
                                                data-role="{{ $role->id }}" data-menu="{{ $m->id }}">
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

@endsection
