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
                  <a class="btn btn-dark btn-icon-text" href="{{route('books.create')}}">Add Book<i class="mdi mdi-plus btn-icon-append"></i></a>
                    <div class="table-responsive">
                      <table class="table">
                        <thead>
                          <tr>
                            <th>
                            </th>
                            <th> Book Name </th>
                            <th> Store </th>
                            <th> Action </th>
                          </tr>
                        </thead>
                        <tbody>
                          @foreach($books as $book)
                          <tr>
                            <td>
                            </td>
                            <td><p>{{Str::limit($book->title,50,'...')}}</p></td>
                            <td><p>{{Str::limit($book->store,50,'...')}}</p></td>
                            <td>
                            <a class="btn btn-dark btn-icon-text" href="{{route('books.edit', $book->id)}}">Edit<i class="mdi mdi-file-check btn-icon-append"></i></a>
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