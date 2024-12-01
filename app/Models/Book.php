<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    protected $fillable = [
    'title',
    'author',
    'description',
    'genre',
    'price',
    'file_path',
    'store',
];

    use HasFactory;
}
