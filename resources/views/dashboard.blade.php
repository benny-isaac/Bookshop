@extends('adminlayout.app')
@section('content')
<div class="content-wrapper" style="background-color:white">
            @if(session('success'))
              <div class="alert alert-success">
                  {{ session('success') }}
              </div>
            @endif

            <div class="row">
              <div class="col-sm-4 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <!-- <h5>School:</h5> -->
                    <div class="row">
                      <div class="col-8 col-sm-12 col-xl-8 my-auto">
                        <div class="d-flex d-sm-block d-md-flex align-items-center">
                          <h2 class="mb-0">Creative Learning</h2>
                        </div>
                        <h6 class="text-muted font-weight-normal">Publishings</h6>
                      </div>
                      <div class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
                        <i class="icon-lg mdi mdi-book text-primary ml-auto"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-4 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <!-- <h5>Contact</h5> -->
                    <div class="row">
                      <div class="col-8 col-sm-12 col-xl-8 my-auto">
                        <div class="d-flex d-sm-block d-md-flex align-items-center">
                          <h2 class="mb-0">{{$total}}</h2>
                        </div>
                        @if($total === 1)
                        <h6 class="text-muted font-weight-normal">store</h6>
                        @else
                        <h6 class="text-muted font-weight-normal">stores</h6>
                        @endif
                      </div>
                      <div class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
                        <i class="icon-lg mdi mdi-store text-danger ml-auto"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-4 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <!-- <h5>Purchase</h5> -->
                    <div class="row">
                      <div class="col-8 col-sm-12 col-xl-8 my-auto">
                        <div class="d-flex d-sm-block d-md-flex align-items-center">
                          <h2 class="mb-0">New York</h2>
                        </div>
                        <h6 class="text-muted font-weight-normal">Location</h6>
                      </div>
                      <div class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
                        <i class="icon-lg mdi mdi-arrow-down-bold-circle text-success ml-auto"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <canvas id="salesChart" style="width: 100%; height: 300px;"></canvas>
            <script>
        // Prepare data from Laravel
        const labels = @json($salesData->pluck('store'));
        const data = @json($salesData->pluck('total_sales'));

        // Render Chart
        const ctx = document.getElementById('salesChart').getContext('2d');
        const salesChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: labels,
                datasets: [{
                    label: 'Total Sales ($)',
                    data: data,
                    backgroundColor: [
          'rgba(54, 162, 235, 0.2)',
        ],
        borderColor: [
          'rgba(54, 162, 235, 1)',
        ],
                    borderWidth: 1,
                    barThickness: 100, // Set the bar width to 20px
                }]
            },
            options: {
                responsive: true,
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    </script>
            
          </div>
@endsection