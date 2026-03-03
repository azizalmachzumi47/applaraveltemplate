<div class="header-right">

    <ul class="notifications">

        <li>
            <a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown">
                <i class="fa fa-bell"></i>
                {{-- <span class="badge">3</span> --}}
            </a>

            <div class="dropdown-menu notification-menu">
                <div class="notification-title">
                    <span class="pull-right label label-default">3</span>
                    Alerts
                </div>

                <div class="content">
                    <ul>
                        {{-- <li>
                                        <a href="#" class="clearfix">
                                            <div class="image">
                                                <i class="fa fa-thumbs-down bg-danger"></i>
                                            </div>
                                            <span class="title">Server is Down!</span>
                                            <span class="message">Just now</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="clearfix">
                                            <div class="image">
                                                <i class="fa fa-lock bg-warning"></i>
                                            </div>
                                            <span class="title">User Locked</span>
                                            <span class="message">15 minutes ago</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="clearfix">
                                            <div class="image">
                                                <i class="fa fa-signal bg-success"></i>
                                            </div>
                                            <span class="title">Connection Restaured</span>
                                            <span class="message">10/10/2014</span>
                                        </a>
                                    </li> --}}
                    </ul>

                    <hr />

                    <div class="text-right">
                        <a href="#" class="view-more">View All</a>
                    </div>
                </div>
            </div>
        </li>
    </ul>

    <span class="separator"></span>

    <div id="userbox" class="userbox">
        <a href="#" data-toggle="dropdown">
            <figure class="profile-picture">
                <img src="{{ Str::startsWith(Auth::user()->image, 'https') ? Auth::user()->image : asset('images/' . (Auth::user()->image ?: 'default.png')) }}"
                    alt="Gambar" class="user-avatar-md rounded-circle">
            </figure>
            <div class="profile-info" data-lock-name="John Doe" data-lock-email="johndoe@JSOFT.com">
                <span class="name">{{ Auth::user()->name }}</span>
                <span class="role">{{ Auth::user()?->userRole?->role ?? 'No Role' }}</span>
            </div>

            <i class="fa custom-caret"></i>
        </a>

        <div class="dropdown-menu">
            <ul class="list-unstyled">
                <li class="divider"></li>
                <li>
                    <a role="menuitem" tabindex="-1" href="pages-user-profile.html"><i class="fa fa-user"></i> My
                        Profile</a>
                </li>
                {{-- <li>
                                <a role="menuitem" tabindex="-1" href="#" data-lock-screen="true"><i
                                        class="fa fa-lock"></i> Lock Screen</a>
                            </li> --}}
                <li>
                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                        <i class="fa fa-power-off mr-2"></i>Logout
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
