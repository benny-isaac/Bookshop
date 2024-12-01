@extends('adminlayout.app')
@section('content')
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <div class="row ">
              <div class="col-lg-6 mx-auto grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Edit Book</h4>
                    <div class="dropdown-divider"></div>

                    <form class="forms-sample" id="contactForm" method="post" action="{{route('books.update',$book->id)}}" enctype="multipart/form-data">
                      @csrf
                      @method('PUT')
                        <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" class="form-control" id="title" name="title" value="{{ old('title', $book->title) }}">
                        @error('title')
                          <span class="text-danger">{{ $message }}</span>
                        @enderror
                      </div>

                      <div class="form-group">
                        <label for="author">Author</label>
                        <input type="text" class="form-control" id="author" name="author" value="{{ old('author', $book->author) }}">
                        @error('author')
                          <span class="text-danger">{{ $message }}</span>
                        @enderror
                      </div>

                      <div class="form-group">
                        <label for="description">Description</label>
                        <textarea class="form-control" name="description" id="description" rows="4">{{old('description',$book->description)}}</textarea>
                        @error('condescriptiontent')
                          <span class="text-danger">Insert description!</span><br>
                        @enderror
                      </div>

                      <div class="form-group">
                        <label for="genre">Genre</label>
                        <input type="text" class="form-control" id="genre" name="genre" value="{{ old('genre', $book->genre) }}">
                        @error('genre')
                          <span class="text-danger">{{ $message }}</span>
                        @enderror
                      </div>

                      <div class="control-group">
                        <label for="price">Price:</label>
                        <input type="number" min="1" step="0.01" class="form-control border-0 p-4" name="price" id="price" 
                              value="{{ old('price', $book->price) }}" placeholder="" required="required"/>
                        <p class="help-block text-danger"></p>
                      </div>

                      <!-- <div class="form-group">
                        <label for="path"></label>
                        <input type="text" class="form-control" id="path" name="file_path" value="{{ old('file_path', $book->file_path) }}">
                        @error('path')
                          <span class="text-danger">{{ $message }}</span>
                        @enderror
                      </div> -->

                      <div class="form-group">
                      <label for="store">Store</label>
                      <select class="form-control" id="store" name="store">
                          <option value="" disabled selected>Select a store</option>
                          @foreach ($stores as $store)
                              <option value="{{ $store->store }}" 
                                  {{ old('store', $book->store) == $store->store ? 'selected' : '' }}>
                                  {{ $store->store }}
                              </option>
                          @endforeach
                      </select>
                      @error('store')
                          <span class="text-danger">{{ $message }}</span>
                      @enderror
                  </div>

                  <label>Image</label><br>
                      <input type="file" id="booksliderimg" name="image" class="file-upload-default imageUpload" data-preview-container="previewContainer1"><br><br>
                      @if($book->image)
                      <div class="image-preview-container" data-preview-container="previewContainer1"><img src="{{ asset('uploads/' . $book->file_path) }}" alt="Image" width="150" height="150"></div>
                      @else
                      <div class="image-preview-container" data-preview-container="previewContainer1"></div>
                      @endif
                      <div id="imgError" style="font-size:14px;color: red; display: none;"></div>

                      <div class="form-group">
                        <div class="input-group col-xs-12">
                        </div>
                      </div>
                      <button type="submit" class="btn btn-primary mr-2">Update</button>
                      <a href="{{ route('books.index') }}" class="btn btn-dark">Cancel</a>
                    </form>
                  </div>
                </div>
              </div>
            </div> 
          </div>
</div>
          <!-- content-wrapper ends -->
@endsection