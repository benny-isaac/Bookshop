<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sale extends Model
{
    protected $fillable = [
        'store',
        'title',
        'author',
        'quantity',
        'price',
        'email',
        'address',
        'totalPrice',
        'zip',
        'date',
        'name',
        'card_num',
        'expiration',
        'cvv',
    ];
    use HasFactory;
}
