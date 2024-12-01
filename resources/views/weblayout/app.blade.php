<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>Creative Learning</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="{{ asset('webassets/images/favicon.ico') }}" type="image/x-icon">
    <link rel="apple-touch-icon" href="{{ asset('webassets/images/apple-touch-icon.png') }}">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="{{ asset('webassets/css/bootstrap.min.css') }}">
    <!-- Site CSS -->
    <link rel="stylesheet" href="{{ asset('webassets/css/style.css') }}">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="{{ asset('webassets/css/responsive.css') }}">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="{{ asset('webassets/css/custom.css') }}">

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Start Main Top -->
    <div class="main-top">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="text-slid-box">
                        <div id="offer-box" class="carouselTicker">
                            <ul class="offer-box">
                                <li>
                                    <i class="fab fa-opencart"></i> Off 10%! Shop Now Man
                                </li>
                                <li>
                                    <i class="fab fa-opencart"></i> 50% - 80% off on Black Friday
                                </li>
                                <li>
                                    <i class="fab fa-opencart"></i> 20% off Entire Purchase Promo code: offT20
                                </li>
                                <li>
                                    <i class="fab fa-opencart"></i> Off 50%! Shop Now
                                </li>
                                <li>
                                    <i class="fab fa-opencart"></i> 20% off Entire Purchase Promo code: offT20
                                </li>
                                <li>
                                    <i class="fab fa-opencart"></i> Off 50%! Shop Now
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="right-phone-box">
                        <p>Call US :- <a href="#"> +233 (0) 59 122 8552</a></p>
                    </div>
                    <div class="our-link">
                        <ul>
                            <li><a href="{{route('login')}}">Login</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Main Top -->

    <!-- Start Main Top -->
    <header class="main-header">
        <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
            <div class="container">
                <!-- Start Header Navigation -->
                <div class="navbar-header">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand" href="{{ url('/') }}"><img src="{{ asset('webassets/images/logo.png') }}" class="logo" alt=""></a>
                </div>
                <!-- End Header Navigation -->

                <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                        <li class="nav-item"><a class="nav-link" href="{{ url('/') }}">Store</a></li>
                        <li class="nav-item"><a class="nav-link" href="{{ url('/about') }}">About Us</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <!-- End Main Top -->

    @yield('content')

    <!-- Start copyright -->
    <div class="footer-copyright">
        <p class="footer-company">All Rights Reserved. &copy; 2024 <a href="#">Creative Learning</a> Developed By:
            <a href="https://html.design/">HBL</a></p>
    </div>
    <!-- End copyright -->

    <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

    <!-- ALL JS FILES -->
    <script src="{{ asset('webassets/js/jquery-3.2.1.min.js') }}"></script>
    <script src="{{ asset('webassets/js/popper.min.js') }}"></script>
    <script src="{{ asset('webassets/js/bootstrap.min.js') }}"></script>
    <!-- ALL PLUGINS -->
    <script src="{{ asset('webassets/js/jquery.superslides.min.js') }}"></script>
    <script src="{{ asset('webassets/js/bootstrap-select.js') }}"></script>
    <script src="{{ asset('webassets/js/inewsticker.js') }}"></script>
    <script src="{{ asset('webassets/js/bootsnav.js') }}"></script>
    <script src="{{ asset('webassets/js/images-loded.min.js') }}"></script>
    <script src="{{ asset('webassets/js/isotope.min.js') }}"></script>
    <script src="{{ asset('webassets/js/owl.carousel.min.js') }}"></script>
    <script src="{{ asset('webassets/js/baguetteBox.min.js') }}"></script>
    <script src="{{ asset('webassets/js/jquery-ui.js') }}"></script>
    <script src="{{ asset('webassets/js/jquery.nicescroll.min.js') }}"></script>
    <script src="{{ asset('webassets/js/form-validator.min.js') }}"></script>
    <script src="{{ asset('webassets/js/contact-form-script.js') }}"></script>
    <script src="{{ asset('webassets/js/custom.js') }}"></script>
</body>
</html>
