<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class CustomersInOutTime extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'customer_id',
        'in_time',
        'out_time',
    ];
}
