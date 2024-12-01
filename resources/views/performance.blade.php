@extends('adminlayout.app')
@section('content')
        <!-- partial -->
        <div class="main-panel">

          <h1>{{ ucfirst($analysisType) }} Analysis for Store: {{ $store }}</h1>

    <canvas id="analysisChart"  style="width: 100%; height: 300px;"></canvas>
    <script>
    // Get the canvas context
    const ctx = document.getElementById('analysisChart').getContext('2d');

    // Default chart settings
    let chartType = 'bar';
    let chartLabels = [];
    let chartData = {};

    @if ($analysisType === 'total_sales' || $analysisType === 'average_sales')
        chartLabels = @json($data->pluck('store'));
        chartData = {
            label: '{{ $analysisType === "total_sales" ? "Total Sales ($)" : "Average Sales ($)" }}',
            data: @json($data->pluck($analysisType === 'total_sales' ? 'total_sales' : 'average_sales')),
            backgroundColor: 'rgba(75, 192, 192, 0.2)',
            borderColor: 'rgba(75, 192, 192, 1)',
            borderWidth: 1
        };
    @elseif ($analysisType === 'best_selling_books')
        chartLabels = @json($data->pluck('title'));
        chartData = {
            label: 'Total Quantity Sold',
            data: @json($data->pluck('total_quantity')),
            backgroundColor: 'rgba(255, 159, 64, 0.2)',
            borderColor: 'rgba(255, 159, 64, 1)',
            borderWidth: 1
        };
    @elseif ($analysisType === 'sales_trend')
        chartType = 'line';
        chartLabels = @json($data->map(fn($row) => $row->year + '-' + String($row->month).padStart(2, '0')));
        chartData = {
            label: 'Monthly Sales ($)',
            data: @json($data->pluck('monthly_sales')),
            backgroundColor: 'rgba(153, 102, 255, 0.2)',
            borderColor: 'rgba(153, 102, 255, 1)',
            borderWidth: 1,
            tension: 0.3 // Smooth curve
        };
    @elseif ($analysisType === 'sales_by_genre')
        chartLabels = @json($data->pluck('genre'));
        chartData = {
            label: 'Sales by Genre ($)',
            data: @json($data->pluck('sales_by_genre')),
            backgroundColor: 'rgba(54, 162, 235, 0.2)',
            borderColor: 'rgba(54, 162, 235, 1)',
            borderWidth: 1
        };
    @endif

    // Initialize the Chart.js instance
    new Chart(ctx, {
        type: chartType,
        data: {
            labels: chartLabels,
            datasets: [chartData]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    display: true,
                    position: 'top'
                }
            },
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
</script>
</div>
          <!-- content-wrapper ends -->
@endsection