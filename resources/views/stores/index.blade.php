@extends('adminlayout.app')
@section('content')
        <!-- partial -->
         <div class="main-panel">
          <div class="content-wrapper">
            @if(session('success'))
              <div class="alert alert-success">
                  {{ session('success') }}
              </div>
            @endif
            <div class="row ">
              <div class="col-12 grid-margin">
                <div class="card">
                  <div class="card-body">
                  <a class="btn btn-dark btn-icon-text" href="{{route('stores.create')}}">Add Store<i class="mdi mdi-plus btn-icon-append"></i></a>
                    <div class="table-responsive">
                      <table class="table">
                        <thead>
                          <tr>
                            <th>
                            </th>
                            <th> Store Name </th>
                            <th> Location </th>
                            <th> Action </th>
                          </tr>
                        </thead>
                        <tbody>
                          @foreach($stores as $store)
                          <tr>
                            <td>
                            </td>
                            <td><p>{{Str::limit($store->store,50,'...')}}</p></td>
                            <td><p>{{Str::limit($store->location,50,'...')}}</p></td>
                            <td>
                            <a class="btn btn-dark btn-icon-text" href="{{route('stores.edit', $store->id)}}">Edit<i class="mdi mdi-file-check btn-icon-append"></i></a>
                            </td>
                          </tr>
                          @endforeach
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div> 
          </div>
</div>
          <!-- content-wrapper ends -->
@endsection