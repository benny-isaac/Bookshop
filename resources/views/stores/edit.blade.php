@extends('adminlayout.app')
@section('content')
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <div class="row ">
              <div class="col-lg-6 mx-auto grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Edit Store</h4>
                    <div class="dropdown-divider"></div>

                    <form class="forms-sample" id="contactForm" method="post" action="{{route('stores.update',$store->id)}}">
                      @csrf
                      @method('PUT')
                        <div class="form-group">
                            <label for="store">Store Name</label>
                            <textarea class="form-control" id="store" rows="4" name="store">{{ old('store', $store->store)}}</textarea><br>
                            @error('store')
                              <span class="text-danger">{{ $message }}</span><br><br>
                            @enderror

                            <label for="location">Location</label>
                            <textarea class="form-control" id="location" rows="4" name="location">{{ old('location', $store->location)}}</textarea>
                            
                            @error('location')
                              <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                      <div class="form-group">
                        <div class="input-group col-xs-12">
                        </div>
                      </div>
                      <button type="submit" class="btn btn-primary mr-2">Update</button>
                      <a href="{{ route('stores.index') }}" class="btn btn-dark">Cancel</a>
                    </form>
                  </div>
                </div>
              </div>
            </div> 
          </div>
</div>
          <!-- content-wrapper ends -->
@endsection