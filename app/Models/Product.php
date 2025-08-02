<?php
 
namespace App\Models;
 
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
 
class Product extends Model
{
    use HasFactory;
    public $timestamps = false;
 
    protected $fillable = [
        'date',
        'jenis_layanan',
        'jenis_kelamin',
        'usia',
        'pendidikan',
        'pekerjaan',
        'P1',
        'P2',
        'P3',
        'P4',
        'P5',
        'P6',
        'P7',
        'P8',
        'P9',
        'teks'
    ];
}