@extends('layouts.app')

@section('title', 'Log Users')

@section('content')

    <div class="row">
        <div class="col-md-12">
            <section class="panel">

                <div class="panel-body">

                    <table class="table table-bordered table-striped mb-none" id="datatable-default">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col" class="text-center">Name</th>
                                <th scope="col" class="text-center">Email</th>
                                <th scope="col" class="text-center">Role</th>
                                <th scope="col" class="text-center">User Agent</th>
                                <th scope="col" class="text-center">Url</th>
                                <th scope="col" class="text-center">Method</th>
                                <th scope="col" class="text-center">Values</th>
                                <th scope="col" class="text-center">Activity</th>
                                <th scope="col" class="text-center">Action User</th>
                                <th scope="col" class="text-center">Ip Address</th>

                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($loguser as $log)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td class="text-center">{{ $log->name }}</td>
                                    <td class="text-center">{{ $log->email }}</td>
                                    <td class="text-center">{{ $log->role->role ?? '-' }}</td>
                                    <td class="text-center">{{ $log->user_agent }}</td>
                                    <td class="text-center">{{ $log->url }}</td>
                                    <td class="text-center">{{ $log->method }}</td>
                                    <td class="text-center">{{ $log->datavalues }}</td>
                                    <td class="text-center">{{ $log->activity }}</td>
                                    <td class="text-center">{{ $log->action }}</td>
                                    <td class="text-center">{{ $log->ip }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>

                    <!-- Jika pakai DataTables JS -->
                    <script>
                        $(document).ready(function() {
                            $('#datatable-default').DataTable({
                                responsive: true,
                                autoWidth: false
                            });
                        });
                    </script>


                </div>
            </section>
        </div>

    </div>

@endsection
