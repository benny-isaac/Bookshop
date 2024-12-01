<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Creative Learning</title>
    <link rel="stylesheet" href="{{ asset('adminassets/vendors/mdi/css/materialdesignicons.min.css') }}">
    <link rel="stylesheet" href="{{ asset('adminassets/vendors/css/vendor.bundle.base.css') }}">
    <link rel="stylesheet" href="{{ asset('adminassets/vendors/jvectormap/jquery-jvectormap.css') }}">
    <link rel="stylesheet" href="{{ asset('adminassets/vendors/flag-icon-css/css/flag-icon.min.css') }}">
    <link rel="stylesheet" href="{{ asset('adminassets/vendors/owl-carousel-2/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('adminassets/vendors/owl-carousel-2/owl.theme.default.min.css') }}">
    <link rel="stylesheet" href="{{ asset('adminassets/css/style.css') }}">
    <link rel="shortcut icon" href="{{ asset('adminassets/images/favicon.png') }}" />
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  </head>
  <body>
    <div class="container-scroller">
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <div class="sidebar-brand-wrapper d-none d-lg-flex align-items-center justify-content-center fixed-top">
          Creative Learning
        </div>
        <ul class="nav">
          <li class="nav-item menu-items">
            <a class="nav-link" href="{{route('dashboard')}}">
              <span class="menu-icon">
                <i class="mdi mdi-speedometer"></i>
              </span>
              <span class="menu-title">Dashboard</span>
            </a>
          </li>
          <div class="dropdown-divider"></div>
          <li class="nav-item menu-items">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
              <span class="menu-icon">
                <i class="mdi mdi-graph"></i>
              </span>
              <span class="menu-title">Performance</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
              <form id="analysisForm" method="GET" action="{{ route('performance') }}">
                  <select name="analysis_type" id="analysis_type" class="form-control">
                      <option value="">Analysis Type</option>
                      <option value="total_sales">Total Sales</option>
                      <option value="average_sales">Average Sales</option>
                      <option value="best_selling_books">Best Selling Books</option>
                      <option value="sales_by_genre">Sales by Genre</option>
                  </select>
                  <select name="store" id="store" class="form-control mt-2">
                      <option value="">Store</option>
                      <option value="Brooklyn">Brooklyn</option>
                      <option value="Queens">Queens</option>
                      <option value="The Bronx">The Bronx</option>
                      <option value="Manhattan">Manhattan</option>
                      <option value="Staten Island">Staten Island</option>
                      <option value="Rochester">Rochester</option>
                  </select>
                  <button type="submit" class="btn btn-primary mt-3">View Analysis</button>
              </form>

              </ul>
            </div>
            <div class="dropdown-divider"></div>
          <!-- </li>
          <li class="nav-item menu-items">
            <a class="nav-link" data-toggle="collapse" href="#about" aria-expanded="false" aria-controls="ui-basic">
              <span class="menu-icon">
                <i class="mdi mdi-laptop"></i>
              </span>
              <span class="menu-title">About Us</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="about">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="">- Slider</a></li>
              </ul>
            </div>
          </li> -->
          <div class="dropdown-divider"></div>
        </ul>
      </nav>
      <div class="container-fluid page-body-wrapper">
        <nav class="navbar p-0 fixed-top d-flex flex-row">
          <div class="navbar-brand-wrapper d-flex d-lg-none align-items-center justify-content-center">
            Creative Learning
          </div>
          <div class="navbar-menu-wrapper flex-grow d-flex align-items-stretch">
            <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
              <span class="mdi mdi-menu"></span>
            </button>
            
            <ul class="navbar-nav navbar-nav-right">
              <li class="nav-item dropdown d-none d-lg-block">
                <a class="nav-link btn btn-outline-success create-new-button" href="{{route('stores.index')}}">Stores</a>
              </li>
              <li class="nav-item dropdown d-none d-lg-block">
                <a class="nav-link btn btn-outline-info create-new-button" aria-expanded="false" href="{{route('books.index')}}">Books</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link" id="profileDropdown" href="#" data-toggle="dropdown">
                  <div class="navbar-profile">
                    <p class="mb-0 d-none d-sm-block navbar-profile-name">Admin</p>
                    <i class="mdi mdi-menu-down d-none d-sm-block"></i>
                  </div>
                </a>
                <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="profileDropdown">
                  <div class="dropdown-divider"></div>
                  <form method="post" action="{{route('logout')}}">
                  @csrf
                  <a class="dropdown-item preview-item" href="{{route('logout')}}" onclick="event.preventDefault();
                    this.closest('form').submit();">
                    <div class="preview-thumbnail">
                      <div class="preview-icon bg-dark rounded-circle">
                        <i class="mdi mdi-logout text-danger"></i>
                      </div>
                    </div>
                    <div class="preview-item-content">
                      <p class="preview-subject mb-1">Logout</p>
                            
                    </div>
                  </a>
                  </form>
                </div>
              </li>
            </ul>
            <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
              <span class="mdi mdi-format-line-spacing"></span>
            </button>
          </div>
        </nav>
        <div class="main-panel">
          @yield('content')
          <footer class="footer">
            <div class="d-sm-flex justify-content-center justify-content-sm-between">
              <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Developed by  HLB</span>
            </div>
          </footer>
        </div>
      </div>
    </div>
    <script src="{{asset('adminassets/vendors/js/vendor.bundle.base.js')}}"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="{{asset('adminassets/vendors/chart.js/Chart.min.js')}}"></script>
    <script src="{{asset('adminassets/vendors/progressbar.js/progressbar.min.js')}}"></script>
    <script src="{{asset('adminassets/vendors/jvectormap/jquery-jvectormap.min.js')}}"></script>
    <script src="{{asset('adminassets/vendors/jvectormap/jquery-jvectormap-world-mill-en.js')}}"></script>
    <script src="{{asset('adminassets/vendors/owl-carousel-2/owl.carousel.min.js')}}"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="{{asset('adminassets/js/off-canvas.js')}}"></script>
    <script src="{{asset('adminassets/js/hoverable-collapse.js')}}"></script>
    <script src="{{asset('adminassets/js/misc.js')}}"></script>
    <script src="{{asset('adminassets/js/settings.js')}}"></script>
    <script src="{{asset('adminassets/js/todolist.js')}}"></script>
    <script src="{{asset('adminassets/js/preview.js')}}"></script>
    <script src="{{asset('adminassets/js/previewmulti.js')}}"></script>

    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="{{asset('adminassets/js/dashboard.js')}}"></script>
    <!-- End custom js for this page -->
    <!-- Form Validation-->
    <script src="{{asset('adminassets/js/formvalidator.js')}}"></script>
    <script src="{{asset('adminassets/js/dimension.js')}}"></script>
    <script src="{{asset('adminassets/js/enroll.js')}}"></script>
    <script src="{{asset('adminassets/js/objective.js')}}"></script>
    <script src="{{asset('adminassets/js/founder.js')}}"></script>
    <script src="{{asset('adminassets/js/activity.js')}}"></script>

  </body>
</html>
