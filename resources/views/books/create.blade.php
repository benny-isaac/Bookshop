@extends('adminlayout.app')
@section('content')
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <div class="row ">
              <div class="col-lg-6 mx-auto grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Add New Book</h4>
                    <div class="dropdown-divider"></div>

                    <form class="forms-sample" method="post" action="{{ route('books.store') }}" enctype="multipart/form-data">
    @csrf
    <div class="form-group">
        <label for="title">Title</label>
        <input type="text" class="form-control" id="title" name="title" value="{{ old('title') }}">
        @error('title')
        <span class="text-danger">{{ $message }}</span>
        @enderror
    </div>

    <div class="form-group">
        <label for="author">Author</label>
        <input type="text" class="form-control" id="author" name="author" value="{{ old('author') }}">
        @error('author')
        <span class="text-danger">{{ $message }}</span>
        @enderror
    </div>

    <div class="form-group">
        <label for="description">Description</label>
        <textarea class="form-control" name="description" id="description" rows="4">{{ old('description') }}</textarea>
        @error('description')
        <span class="text-danger">{{ $message }}</span>
        @enderror
    </div>

    <div class="form-group">
        <label for="genre">Genre</label>
        <input type="text" class="form-control" id="genre" name="genre" value="{{ old('genre') }}">
        @error('genre')
        <span class="text-danger">{{ $message }}</span>
        @enderror
    </div>

    <div class="form-group">
        <label for="price">Price:</label>
        <input type="number" min="1" step="0.01" class="form-control" name="price" id="price" value="{{ old('price') }}" required>
        @error('price')
        <span class="text-danger">{{ $message }}</span>
        @enderror
    </div>

    <div class="form-group">
        <label for="store">Store</label>
        <select class="form-control" id="store" name="store">
            <option value="" disabled selected>Select a store</option>
            @foreach ($stores as $store)
                <option value="{{ $store->store }}" {{ old('store') == $store->store ? 'selected' : '' }}>
                    {{ $store->store }}
                </option>
            @endforeach
        </select>
        @error('store')
        <span class="text-danger">{{ $message }}</span>
        @enderror
    </div>

    <label>Image</label><br>
                      @error('image')
                          <span class="text-danger">{{ $message }}</span>
                        @enderror
                      <input type="file" id="homesliderimg" name="image" class="file-upload-default imageUpload" data-preview-container="previewContainer1" required><br><br>
                      <div class="image-preview-container" data-preview-container="previewContainer1"></div>
                      <div id="" style="font-size:14px;color: red; display: none;"></div>

    <button type="submit" id="" class="btn btn-primary mr-2">Add</button>
    <a href="{{ route('books.index') }}" class="btn btn-dark">Cancel</a>
</form>

                  </div>
                </div>
              </div>
            </div> 
          </div>
          <!-- content-wrapper ends -->
@endsection