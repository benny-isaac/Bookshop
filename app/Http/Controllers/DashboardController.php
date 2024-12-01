<?php

namespace App\Http\Controllers;
use App\Models\Store;
use App\Models\Book;
use App\Models\Sale;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class DashboardController extends Controller
{
    //
    public function Dashboard(){
        $stores = Store::all();
        $total = Store::count();
        $salesData = Sale::selectRaw('store, SUM(totalPrice) as total_sales')
        ->groupBy('store')
        ->get();
        return view('dashboard',compact('stores','total','salesData'));
    }

    // public function performance(){
    //     return view('performance');
    // }

    public function analyze(Request $request)
{
    $analysisType = $request->input('analysis_type');
    $store = $request->input('store');

    if (!$analysisType || !$store) {
        return back()->with('error', 'Please select both store and analysis type.');
    }

    switch ($analysisType) {
        case 'total_sales':
            $data = Sale::where('store', $store)
                ->select('store', DB::raw('SUM(totalPrice) as total_sales'))
                ->groupBy('store')
                ->get();
            break;

        case 'average_sales':
            $data = Sale::where('store', $store)
                ->select('store', DB::raw('AVG(totalPrice) as average_sales'))
                ->groupBy('store')
                ->get();
            break;

        case 'best_selling_books':
            $data = Sale::where('store', $store)
                ->select('title', DB::raw('SUM(quantity) as total_quantity'))
                ->groupBy('title')
                ->orderByDesc('total_quantity')
                ->take(5)
                ->get();
            break;

        case 'sales_trend':
            $data = Sale::where('store', $store)
                ->select(DB::raw('YEAR(date) as year, MONTH(date) as month'), DB::raw('SUM(totalPrice) as monthly_sales'))
                ->groupBy('year', 'month')
                ->orderBy('year', 'month')
                ->get();
            break;

        case 'sales_by_genre':
            $data = Sale::where('store', $store)
                ->select('genre', DB::raw('SUM(totalPrice) as sales_by_genre'))
                ->groupBy('genre')
                ->orderByDesc('sales_by_genre')
                ->get();
            break;

        default:
            return back()->with('error', 'Invalid analysis type.');
    }

    return view('performance', compact('data', 'analysisType', 'store'));
}

}
