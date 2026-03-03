<!doctype html>
<html class="fixed">

<head>

    <!-- Basic -->
    <meta charset="UTF-8">

    <title>PSTECHNO</title>
    <meta name="keywords" content="PSTECHNO" />
    <meta name="description" content="PSTECHNO">
    <meta name="author" content="JSOFT.net">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

    <!-- Web Fonts  -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light"
        rel="stylesheet" type="text/css">

    <!-- Vendor CSS -->
    <link rel="shortcut icon" href="{{ asset('logo_circlepstechno.png') }}" type="image/x-icon" />
    <link rel="stylesheet" href="{{ asset('assetslacaq/vendor/bootstrap/css/bootstrap.css') }}" />
    <link rel="stylesheet" href="{{ asset('assetslacaq/vendor/font-awesome/css/font-awesome.css') }}" />
    <link rel="stylesheet" href="{{ asset('assetslacaq/vendor/magnific-popup/magnific-popup.css') }}" />
    <link rel="stylesheet" href="{{ asset('assetslacaq/vendor/bootstrap-datepicker/css/datepicker3.css') }}" />

    <!-- Specific Page Vendor CSS -->
    <link rel="stylesheet"
        href="{{ asset('assetslacaq/vendor/jquery-ui/css/ui-lightness/jquery-ui-1.10.4.custom.css') }}" />
    <link rel="stylesheet" href="{{ asset('assetslacaq/vendor/bootstrap-multiselect/bootstrap-multiselect.css') }}" />
    <link rel="stylesheet" href="{{ asset('assetslacaq/vendor/morris/morris.css') }}" />
    <link rel="stylesheet" href="{{ asset('assetslacaq/vendor/select2/select2.css') }}" />
    <link rel="stylesheet" href="{{ asset('assetslacaq/vendor/bootstrap-tagsinput/bootstrap-tagsinput.css') }}" />
    <link rel="stylesheet"
        href="{{ asset('assetslacaq/vendor/bootstrap-colorpicker/css/bootstrap-colorpicker.css') }}" />
    <link rel="stylesheet"
        href="{{ asset('assetslacaq/vendor/bootstrap-timepicker/css/bootstrap-timepicker.css') }}" />
    <link rel="stylesheet" href="{{ asset('assetslacaq/vendor/dropzone/css/basic.css') }}" />
    <link rel="stylesheet" href="{{ asset('assetslacaq/vendor/dropzone/css/dropzone.css') }}" />
    <link rel="stylesheet"
        href="{{ asset('assetslacaq/vendor/bootstrap-markdown/css/bootstrap-markdown.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('assetslacaq/vendor/summernote/summernote.css') }}" />
    <link rel="stylesheet" href="{{ asset('assetslacaq/vendor/summernote/summernote-bs3.css') }}" />
    <link rel="stylesheet" href="{{ asset('assetslacaq/vendor/codemirror/lib/codemirror.css') }}" />
    <link rel="stylesheet" href="{{ asset('assetslacaq/vendor/codemirror/theme/monokai.css') }}" />
    <link rel="stylesheet" href="{{ asset('assets/vendor/jquery-datatables-bs3/assets/css/datatables.css') }}" />

    <!-- Theme CSS -->
    <link rel="stylesheet" href="{{ asset('assetslacaq/stylesheets/theme.css') }}" />

    <!-- Skin CSS -->
    <link rel="stylesheet" href="{{ asset('assetslacaq/stylesheets/skins/default.css') }}" />

    <!-- Theme Custom CSS -->
    <link rel="stylesheet" href="{{ asset('assetslacaq/stylesheets/theme-custom.css') }}">

    <!-- Head Libs -->
    <script src="{{ asset('assetslacaq/vendor/modernizr/modernizr.js') }}"></script>

</head>

<body>
    <section class="body">

        <!-- start: header -->
        <header class="header">
            <div class="logo-container">
                <a href="../" class="logo">
                    <img src="{{ asset('logopstechno.png') }}" height="70" alt="PSTECHNO" style="margin-top:-18px;">
                </a>
                <div class="visible-xs toggle-sidebar-left" data-toggle-class="sidebar-left-opened" data-target="html"
                    data-fire-event="sidebar-left-opened">
                    <i class="fa fa-bars" aria-label="Toggle sidebar"></i>
                </div>
            </div>

            <!-- start: search & user box -->
            @include('partials.navbar')
            <!-- end: search & user box -->
        </header>
        <!-- end: header -->

        <div class="inner-wrapper">
            <!-- start: sidebar -->
            @include('partials.sidebar')
            <!-- end: sidebar -->

            <section role="main" class="content-body">
                <header class="page-header">
                    <h2>@yield('title')</h2>

                    <div class="right-wrapper pull-right">
                        <ol class="breadcrumbs">
                            <li>
                                <a href="index.html">
                                    <i class="fa fa-home"></i>
                                </a>
                            </li>
                            <li><span>@yield('title')</span></li>
                        </ol>

                        <a class="sidebar-right-toggle" data-hidden="sidebar-right">
                            {{-- <i class="fa fa-chevron-left"></i> --}}
                        </a>
                    </div>
                </header>
                @yield('content')
            </section>
        </div>

        <!-- Modal Logout -->
        <div class="modal fade" id="logoutModal" tabindex="-1" aria-labelledby="logoutModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="logoutModalLabel">Konfirmasi Logout</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        Apakah Anda yakin ingin logout?
                    </div>
                    <div class="modal-footer">
                        {{-- <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                            <!-- Form Logout --> --}}
                        <form action="{{ route('logout') }}" method="POST">
                            @csrf
                            <button type="submit" class="btn btn-danger">
                                Logout
                            </button>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Vendor -->
    <script src="{{ asset('assetslacaq/vendor/jquery/jquery.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/bootstrap/js/bootstrap.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/jquery-browser-mobile/jquery.browser.mobile.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/nanoscroller/nanoscroller.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/magnific-popup/magnific-popup.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/jquery-placeholder/jquery.placeholder.js') }}"></script>

    <!-- Specific Page Vendor -->
    <script src="{{ asset('assetslacaq/vendor/jquery-ui/js/jquery-ui-1.10.4.custom.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/jquery-ui-touch-punch/jquery.ui.touch-punch.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/jquery-appear/jquery.appear.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/bootstrap-multiselect/bootstrap-multiselect.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/jquery-easypiechart/jquery.easypiechart.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/flot/jquery.flot.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/flot-tooltip/jquery.flot.tooltip.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/flot/jquery.flot.pie.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/flot/jquery.flot.categories.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/flot/jquery.flot.resize.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/jquery-sparkline/jquery.sparkline.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/select2/select2.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/raphael/raphael.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/morris/morris.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/gauge/gauge.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/snap-svg/snap.svg.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/liquid-meter/liquid.meter.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/jqvmap/jquery.vmap.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/jqvmap/data/jquery.vmap.sampledata.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/jqvmap/maps/jquery.vmap.world.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/jqvmap/maps/continents/jquery.vmap.africa.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/jqvmap/maps/continents/jquery.vmap.asia.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/jqvmap/maps/continents/jquery.vmap.australia.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/jqvmap/maps/continents/jquery.vmap.europe.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/jqvmap/maps/continents/jquery.vmap.north-america.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/jqvmap/maps/continents/jquery.vmap.south-america.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/jquery-maskedinput/jquery.maskedinput.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/bootstrap-tagsinput/bootstrap-tagsinput.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/bootstrap-colorpicker/js/bootstrap-colorpicker.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/bootstrap-timepicker/js/bootstrap-timepicker.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/fuelux/js/spinner.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/dropzone/dropzone.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/bootstrap-markdown/js/markdown.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/bootstrap-markdown/js/to-markdown.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/bootstrap-markdown/js/bootstrap-markdown.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/codemirror/lib/codemirror.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/codemirror/addon/selection/active-line.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/codemirror/addon/edit/matchbrackets.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/codemirror/mode/javascript/javascript.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/codemirror/mode/xml/xml.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/codemirror/mode/htmlmixed/htmlmixed.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/codemirror/mode/css/css.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/summernote/summernote.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/bootstrap-maxlength/bootstrap-maxlength.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/ios7-switch/ios7-switch.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/jquery-datatables/media/js/jquery.dataTables.js') }}"></script>
    <script src="{{ asset('assetslacaq/vendor/jquery-datatables/extras/TableTools/js/dataTables.tableTools.min.js') }}">
    </script>
    <script src="{{ asset('assetslacaq/vendor/jquery-datatables-bs3/assets/js/datatables.js') }}"></script>

    <!-- Theme Base, Components and Settings -->
    <script src="{{ asset('assetslacaq/javascripts/theme.js') }}"></script>

    <!-- Theme Custom -->
    <script src="{{ asset('assetslacaq/javascripts/theme.custom.js') }}"></script>

    <!-- Theme Initialization Files -->
    <script src="{{ asset('assetslacaq/javascripts/theme.init.js') }}"></script>


    <!-- Examples -->
    <script src="{{ asset('assetslacaq/javascripts/dashboard/examples.dashboard.js') }}"></script>
    <script src="{{ asset('assets/javascripts/forms/examples.advanced.form.js') }}" />
    </script>
    <script src="{{ asset('assetslacaq/javascripts/tables/examples.datatables.default.js') }}"></script>
    <script src="{{ asset('assetslacaq/javascripts/tables/examples.datatables.row.with.details.js') }}"></script>
    <script src="{{ asset('assetslacaq/javascripts/tables/examples.datatables.tabletools.js') }}"></script>

    <!-- SweetAlert2 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.28/dist/sweetalert2.min.css" rel="stylesheet">

    <!-- SweetAlert2 JS -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.28/dist/sweetalert2.all.min.js"></script>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            @if (session('success'))
                Swal.fire({
                    icon: 'success',
                    title: 'Success!',
                    text: '{{ session('success') }}',
                });
            @endif

            @if (session('error'))
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: '{{ session('error') }}',
                });
            @endif

            @if ($errors->any())
                let errorMessages = '';
                @foreach ($errors->all() as $error)
                    errorMessages += '{{ $error }}\n';
                @endforeach
                Swal.fire({
                    icon: 'error',
                    title: 'Validation Errors',
                    text: errorMessages,
                });
            @endif
        });
    </script>

    <script>
        $(document).ready(function() {
            $('.form-check-input').on('click', function() {
                const menuId = $(this).data('menu');
                const roleId = $(this).data('role');

                $.ajax({
                    url: "{{ route('admin.changeAccess') }}",
                    type: 'POST',
                    data: {
                        _token: '{{ csrf_token() }}',
                        menuId: menuId,
                        roleId: roleId
                    },
                    success: function(response) {
                        if (response.success) {
                            Swal.fire({
                                icon: 'success',
                                title: 'Berhasil!',
                                text: 'Akses berhasil diperbarui',
                                timer: 2000, // Menutup otomatis setelah 2 detik
                                showConfirmButton: false
                            });
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Gagal!',
                                text: 'Gagal memperbarui akses',
                                timer: 2000,
                                showConfirmButton: false
                            });
                        }
                    },
                    error: function() {
                        Swal.fire({
                            icon: 'error',
                            title: 'Kesalahan!',
                            text: 'Terjadi kesalahan pada server',
                            timer: 2000,
                            showConfirmButton: false
                        });
                    }
                });
            });
        });
    </script>
</body>

</html>
