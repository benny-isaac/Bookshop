@extends('weblayout.app')
@section('content')

    <!-- Start All Title Box -->
    <div class="all-title-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Checkout</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Shop</a></li>
                        <li class="breadcrumb-item active">Checkout</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <!-- Start Cart  -->
    <div class="cart-box-main">
        <div class="container">
            <!--  -->
            <div class="row">
                <div class="col-sm-6 col-lg-6 mb-3">
                    <div class="checkout-address">
                        <div class="title-left">
                            <h3>Billing address</h3>
                        </div>
                        <form action="{{ route('processOrder') }}" method="post">
                            @csrf
                            <div class="mb-3">
                                <label for="email">Email*</label>
                                <input type="email" class="form-control" name="email" placeholder="">
                                <div class="invalid-feedback"> Please enter a valid email address for shipping updates. </div>
                            </div>
                            <div class="mb-3">
                                <label for="address">Address*</label>
                                <input type="text" class="form-control" name="address" placeholder="" required>
                                <div class="invalid-feedback"> Please enter your shipping address. </div>
                            </div>
                            <div class="row">
                                <input type="hidden" name="store" value="{{$book->store}}">
                                <input type="hidden" name="title" value="{{$book->title}}">
                                <input type="hidden" name="price" value="{{$book->price}}">
                                <input type="hidden" name="author" value="{{$book->author}}">
                                <input type="hidden" name="book_id" value="{{ $book->id }}">
                                <input type="hidden" name="quantity" value="{{ $quantity }}">
                                <input type="hidden" name="genre" value="{{ $book->genre }}">
                                <input type="hidden" name="totalPrice" value="{{ $totalPrice }}">
                                <div class="col-md-3 mb-3">
                                    <label for="zip">Zip *</label>
                                    <input type="text" class="form-control" name="zip" placeholder="" required>
                                    <div class="invalid-feedback"> Zip code required. </div>
                                </div>
                                <div class="mb-3">
                                <label for="date">Date*</label>
                                <input type="date" class="form-control" name="date" placeholder="" required>
                                <div class="invalid-feedback"> Please enter your shipping address. </div>
                            </div>
                            </div>
                            <hr class="mb-4">
                            <div class="title"> <span>Payment</span> </div>
                            <div class="d-block my-3">
                                <div class="custom-control custom-radio">
                                    <label class="custom-control-label" for="credit">Credit/Debit card</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="name">Name on card</label>
                                    <input type="text" class="form-control" name="name" placeholder="" required> <small class="text-muted">Full name as displayed on card</small>
                                    <div class="invalid-feedback"> Name on card is required </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="card-number">Credit card number</label>
                                    <input type="text" class="form-control" name="card_number" placeholder="" required>
                                    <div class="invalid-feedback"> Credit card number is required </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3 mb-3">
                                    <label for="expiration">Expiration</label>
                                    <input type="text" class="form-control" name="expiration" placeholder="" required>
                                    <div class="invalid-feedback"> Expiration date required </div>
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="cvv">CVV</label>
                                    <input type="text" class="form-control" name="cvv" placeholder="" required>
                                    <div class="invalid-feedback"> Security code required </div>
                                </div>
                            </div>
                            
                            <hr class="mb-1">
                    </div>
                </div>
                <div class="col-sm-6 col-lg-6 mb-3">
                    <div class="row">
                        <div class="col-md-12 col-lg-12">
                            <div class="order-box">
                                <div class="title-left">
                                    <h3>Your order</h3>
                                </div>
                                <div class="d-flex">
                                    <div class="font-weight-bold">Product</div>
                                    <div class="ml-auto font-weight-bold">{{$book->title}}</div>
                                </div>
                                <hr class="my-1">
                                <div class="d-flex">
                                    <h4>Sub Total</h4>
                                    @if(!empty($book->price))
                                    <div class="ml-auto font-weight-bold">${{$book->price}}</div>
                                    @endif
                                    
                                </div>
                                <div class="d-flex">
                                    <h4>Quantity</h4>
                                    <div class="ml-auto font-weight-bold">{{$quantity}}</div>
                                </div>
                                <div class="d-flex gr-total">
                                    <h5>Grand Total</h5>
                                    @if(!empty($book->price))
                                    <div class="ml-auto font-weight-bold">${{$totalPrice}}</div>
                                    @endif
                                </div>
                                <hr> </div>
                        </div>
                        <button type="submit" class="btn hvr-hover text-white">Buy Now</button>
                    </div>
                    </form>
                </div>
            </div>

        </div>
    </div>
    <!-- End Cart -->

@endsection