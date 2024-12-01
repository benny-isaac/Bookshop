@extends('adminlayout.app')
@section('content')
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <div class="row ">
              <div class="col-lg-6 mx-auto grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Add New Store</h4>
                    <div class="dropdown-divider"></div>

                    <form class="forms-sample" method="post" action="{{route('stores.store')}}" enctype="multipart/form-data">
                      @csrf
                      <div class="form-group">
                        <label for="store">Store Name</label>
                        <input  type="text" class="form-control" id="store" name="store">
                        @error('store')
                          <span class="text-danger">{{ $message }}</span>
                        @enderror
                      </div>

                      <div class="form-group">
                        <label for="location">Location</label>
                        <input  type="text" class="form-control" id="location" name="location">
                        @error('location')
                          <span class="text-danger">{{ $message }}</span>
                        @enderror
                      </div>

                      <div class="form-group">
                        <div class="input-group col-xs-12">
                        </div>
                      </div>
                      <button type="submit" id="submitButton" class="btn btn-primary mr-2">Add</button>
                      <a href="{{ route('stores.index') }}" class="btn btn-dark">Cancel</a>
                    </form>
                  </div>
                </div>
              </div>
            </div> 
          </div>
          <!-- content-wrapper ends -->
@endsection