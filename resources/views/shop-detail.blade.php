@extends('weblayout.app')
@section('content')

    <!-- Start All Title Box -->
    <div class="all-title-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Shop Detail</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Shop</a></li>
                        <li class="breadcrumb-item active">Shop Detail </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <!-- Start Shop Detail  -->
    <div class="shop-detail-box-main">
        <div class="container">
            <div class="row">
                <div class="col-xl-5 col-lg-5 col-md-6">
                    <div id="carousel-example-1" class="single-product-slider carousel slide" data-ride="carousel">
                        <div class="carousel-inner" role="listbox">
                        @if(!empty($book->file_path))
                            <div class="carousel-item active">
                                <img class="d-block w-100" src="{{ asset('uploads/' . $book->file_path) }}" alt="First slide">
                            </div>
                        @endif

                        </div>
                    </div>
                </div>
                <div class="col-xl-7 col-lg-7 col-md-6">
                    <div class="single-product-details">
                        @if(!empty($book->title))
                        <h4>{{$book->title}}</h4>
                        @endif
                        @if(!empty($book->price))
                        <h5> ${{$book->price}}</h5>
                        @endif
                        <p class="available-stock"><span> More than 20 available<a href="#"></a></span>
                        </p>
                            @if(!empty($book->author))
                            <p class="available-stock"><span>Author: <a href="#">{{$book->author}}</a></span>
                            </p>
                                @endif
                            <p class="available-stock"><span>Language: <a href="#">English</a></span>
                            </p>
                            @if(!empty($book->genre))
                            <p class="available-stock"><span>Genre:     <a href="#">{{$book->genre}}</a></span>
                            </p>
                                @endif

                                @if(!empty($book->store))
                            <p class="available-stock"><span>Store:     <a href="#">{{$book->store}}</a></span>
                            </p>
                                @endif
                                
                                <h4>Synopsis:</h4>
                                @if(!empty($book->description))
                                <p>{{$book->description}}</p>
                                @endif
                                <form action="{{ route('checkout') }}" method="POST">
                                    @csrf
                                <ul>
                                    
                                    <li>
                                        <div class="form-group quantity-box">
                                            <label class="control-label">Quantity</label>
                                            <input class="form-control" name="quantity" value="1" min="1" type="number">
                                        </div>
                                    </li>
                                </ul>
                                <input type="hidden" name="book_id" value="{{ $book->id }}">
                                <div class="price-box-bar">
                                    <div class="cart-and-bay-btn">
                                        <button type="submit" class="btn hvr-hover">Purchase</button>
                                    </div>
                                </div>
                                </form>
                    </div>
                </div>
            </div>

            

        </div>
    </div>
    <!-- End Cart -->


   @endsection