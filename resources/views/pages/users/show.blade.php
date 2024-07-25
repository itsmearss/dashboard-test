@extends('layouts.app')

@section('title', 'Users')

@push('style')
    <!-- CSS Libraries -->
    <link rel="stylesheet" href="{{ asset('library/selectric/public/selectric.css') }}">
@endpush

@section('main')
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>User</h1>
                <div class="section-header-breadcrumb">
                    <div class="breadcrumb-item active"><a href="{{route('home')}}">Dashboard</a></div>
                    <div class="breadcrumb-item"><a href="#">Users</a></div>
                    <div class="breadcrumb-item">User</div>
                </div>
            </div>
            <div class="section-body">
                <h2 class="section-title">User</h2>
                <p class="section-lead">User Detail</p>

                <div class="row">
                    <div class="col-12 col-sm-12 col-lg-7">
                        <div class="card author-box card-primary">
                            <div class="card-body">
                                <div class="author-box-left">
                                    @if ($user->photo)
                                        <img alt="image"
                                        src="{{ asset('storage/photos/' . $user->photo) }}"
                                        class="rounded-circle author-box-picture">
                                    @else
                                        No Photo
                                    @endif
                                    <div class="clearfix"></div>
                                    <a href='{{ route('users.edit', $user->id) }}'
                                        class="btn btn-sm btn-info btn-icon ml-2">
                                        <i class="fas fa-edit"></i>
                                        Edit
                                    </a>

                                </div>
                                <div class="author-box-details">
                                    <div class="author-box-name">
                                        <a href="#">{{ $user->name }}</a>
                                    </div>
                                    <div class="author-box-job">{{ $user->username }}</div>
                                    <div class="author-box-description">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                            consequat.</p>
                                    </div>
                                    <div class="mb-2 mt-3">
                                        <div class="text-small font-weight-bold">{{ $user->email }}</div>
                                    </div>
                                    <a href="#"
                                        class="btn btn-social-icon btn-facebook mr-1">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                    <a href="#"
                                        class="btn btn-social-icon btn-twitter mr-1">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                    <a href="#"
                                        class="btn btn-social-icon btn-github mr-1">
                                        <i class="fab fa-github"></i>
                                    </a>
                                    <a href="#"
                                        class="btn btn-social-icon btn-instagram mr-1">
                                        <i class="fab fa-instagram"></i>
                                    </a>
                                    <div class="w-100 d-sm-none"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
@endsection

@push('scripts')
    <!-- JS Libraies -->
    <script src="{{ asset('library/selectric/public/jquery.selectric.min.js') }}"></script>

    <!-- Page Specific JS File -->
    <script src="{{ asset('js/page/features-posts.js') }}"></script>
@endpush
