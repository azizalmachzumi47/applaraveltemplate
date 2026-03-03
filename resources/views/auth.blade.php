<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Auth | PSTECHNO</title>
    <link rel="shortcut icon" href="{{ asset('logo_circlepstechno.png') }}">
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body
    class="min-h-screen flex items-center justify-center bg-gradient-to-br from-indigo-100 via-purple-100 to-pink-100 p-4">

    @include('fragment.alert')

    <div class="w-full max-w-md bg-white/60 backdrop-blur-md rounded-3xl shadow-xl p-8">
        <!-- BRANDING -->
        <div class="flex flex-col items-center mb-6">
            <img src="{{ asset('logopstechno.png') }}" class="w-52 mb-3">
            {{-- <h1 class="text-2xl font-bold text-indigo-900 text-center">PSTECHNO</h1> --}}
        </div>

        <!-- LOGIN FORM -->
        <div id="loginForm" class="transition-opacity duration-500 opacity-100">
            <h2 class="text-xl font-bold text-gray-800 mb-6 text-center">Login</h2>
            <form action="{{ route('login') }}" method="POST" class="space-y-4">
                @csrf
                <input type="email" name="email" placeholder="Email"
                    class="w-full px-4 py-2 rounded-lg border focus:ring-2 focus:ring-indigo-300 focus:outline-none"
                    required>
                <input type="password" name="password" placeholder="Password"
                    class="w-full px-4 py-2 rounded-lg border focus:ring-2 focus:ring-indigo-300 focus:outline-none"
                    required>
                <button type="submit"
                    class="w-full bg-indigo-500 hover:bg-indigo-600 text-white py-2 rounded-lg font-semibold transition">
                    Login
                </button>
            </form>
            <p class="text-sm text-center mt-4">
                Belum punya akun?
                <button onclick="toggleForm()" class="text-indigo-500 font-semibold hover:underline">Register</button>
            </p>
        </div>

        <!-- REGISTER FORM -->
        <div id="registerForm" class="transition-opacity duration-500 opacity-0 hidden">
            <h2 class="text-xl font-bold text-gray-800 mb-6 text-center">Register</h2>
            <form action="{{ route('register') }}" method="POST" class="space-y-4">
                @csrf
                <div>
                    <label for="role_id" class="block mb-1 font-medium text-gray-700">Full Name</label>
                    <input type="text" name="name" placeholder="Full Name"
                        class="w-full px-4 py-2 rounded-lg border focus:ring-2 focus:ring-purple-300 focus:outline-none"
                        required>
                </div>

                <div>
                    <label for="role_id" class="block mb-1 font-medium text-gray-700">Email</label>
                    <input type="email" name="email" placeholder="Email ID"
                        class="w-full px-4 py-2 rounded-lg border focus:ring-2 focus:ring-purple-300 focus:outline-none"
                        required>
                </div>
                <!-- Role Category -->
                <div>
                    <label for="roleCategory" class="block mb-1 font-medium text-gray-700">Pilih Kategori</label>
                    <select id="roleCategory"
                        class="w-full px-4 py-2 rounded-lg border focus:ring-2 focus:ring-purple-300 focus:outline-none">
                        <option value="" disabled selected>Pilih Kategori</option>
                        @foreach ($groupedRoles as $groupName => $roles)
                            @if (count($roles) > 0)
                                <option value="{{ $groupName }}">{{ $groupName }}</option>
                            @endif
                        @endforeach
                    </select>
                </div>

                <!-- Role ID -->
                <div>
                    <label for="role_id" class="block mb-1 font-medium text-gray-700">Pilih Jabatan</label>
                    <select name="role_id" id="role_id"
                        class="w-full px-4 py-2 rounded-lg border focus:ring-2 focus:ring-purple-300 focus:outline-none"
                        required>
                        <option value="" disabled selected>Pilih Role</option>
                    </select>
                </div>

                <div>
                    <label for="entitas" class="block mb-1 font-medium text-gray-700">
                        Pilih entitas
                    </label>

                    <select name="entitas" id="entitas"
                        class="w-full px-4 py-2 rounded-lg border focus:ring-2 focus:ring-purple-300 focus:outline-none"
                        required>

                        <option value="" selected disabled>Pilih ENTITAS</option>
                        <option value="LC">LUCAS</option>
                        <option value="MR">MARIN</option>

                    </select>
                </div>

                <div>
                    <label for="role_id" class="block mb-1 font-medium text-gray-700">Password</label>
                    <input type="password" name="password" placeholder="Password"
                        class="w-full px-4 py-2 rounded-lg border focus:ring-2 focus:ring-purple-300 focus:outline-none"
                        required>
                </div>

                <button type="submit"
                    class="w-full bg-purple-500 hover:bg-purple-600 text-white py-2 rounded-lg font-semibold transition">
                    Sign Up
                </button>
            </form>
            <p class="text-sm text-center mt-4">
                Sudah punya akun?
                <button onclick="toggleForm()" class="text-purple-500 font-semibold hover:underline">Login</button>
            </p>
        </div>
    </div>

    <!-- Toggle Forms -->
    <script>
        function toggleForm() {
            const login = document.getElementById('loginForm');
            const register = document.getElementById('registerForm');

            if (login.classList.contains('opacity-100')) {
                login.classList.remove('opacity-100');
                login.classList.add('opacity-0', 'hidden');

                register.classList.remove('hidden');
                setTimeout(() => {
                    register.classList.add('opacity-100');
                    register.classList.remove('opacity-0');
                }, 50);
            } else {
                register.classList.remove('opacity-100');
                register.classList.add('opacity-0', 'hidden');

                login.classList.remove('hidden');
                setTimeout(() => {
                    login.classList.add('opacity-100');
                    login.classList.remove('opacity-0');
                }, 50);
            }
        }
    </script>

    <!-- Role Dropdown -->
    <script>
        const groupedRoles = @json($groupedRoles);

        document.getElementById('roleCategory').addEventListener('change', function() {
            const selectedCategory = this.value;
            const roleSelect = document.getElementById('role_id');

            // Reset dropdown
            roleSelect.innerHTML = '<option value="" disabled selected>Pilih Role</option>';

            // Add roles dynamically
            if (groupedRoles[selectedCategory]) {
                groupedRoles[selectedCategory].forEach(role => {
                    const option = document.createElement('option');
                    option.value = role.id;
                    option.textContent = role.role;
                    roleSelect.appendChild(option);
                });
            }
        });
    </script>

</body>

</html>
