<!-- start: sidebar -->
<aside id="sidebar-left" class="sidebar-left">

    <div class="sidebar-header">
        <div class="sidebar-title" style="color: white; font-weight: bold;">
            Navigation
        </div>
        <div class="sidebar-toggle hidden-xs" data-toggle-class="sidebar-left-collapsed" data-target="html"
            data-fire-event="sidebar-left-toggle">
            <i class="fa fa-bars" aria-label="Toggle sidebar"></i>
        </div>
    </div>

    <div class="nano">
        <div class="nano-content">
            <nav id="menu" class="nav-main" role="navigation">
                <ul class="nav nav-main">
                    <li class="nav-active">

                    </li>

                    @php
                        $role_id = Auth::user()->role_id;

                        $queryMenu = "SELECT users_menu.id, menu, icon_menu
                        FROM users_menu
                        JOIN users_access_menu
                        ON users_menu.id = users_access_menu.menu_id
                        WHERE users_access_menu.role_id = ?
                        ORDER BY
                            CASE
                                WHEN menu = 'Dashboard' THEN 0
                                ELSE 1
                            END,
                            menu ASC";

                        $menu = DB::select($queryMenu, [$role_id]);
                    @endphp

                    @foreach ($menu as $m)
                        <li class="nav-parent">
                            <a>
                                <i class="{{ $m->icon_menu }}"></i>
                                <span>{{ $m->menu }}</span>
                            </a>

                            <ul id="submenu-{{ $m->id }}" class="nav nav-children">
                                @php
                                    $subMenus = DB::table('users_sub_menu')
                                        ->join('users_menu', 'users_sub_menu.menu_id', '=', 'users_menu.id')
                                        ->where('users_sub_menu.menu_id', $m->id)
                                        ->where('users_sub_menu.is_active', 1)
                                        ->get();
                                @endphp
                                @foreach ($subMenus as $sm)
                                    <li>
                                        <a class="nav-link" href="{{ url($sm->url) }}">{{ $sm->title }}</a>
                                    </li>
                                @endforeach
                            </ul>

                        </li>
                    @endforeach
                </ul>
            </nav>

        </div>

    </div>

</aside>
<!-- end: sidebar -->
