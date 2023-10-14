<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
<<<<<<< HEAD
use Illuminate\Support\Facades\Cache;
=======

>>>>>>> cb440384ffbfa2513416cdb0761f9df4d79e0d23
class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    protected $table ="users";

   protected $fillable=["name","email","password","address","img","role","phone","gender","country"];
   public $timestamps=false;

   public function cart()
   {
    return $this->hasMany(Cart::class);
   }

   public function product()
   {
    return $this->hasMany(product::class);
   }

<<<<<<< HEAD
   public function Isonline(){

    return Cache::has('user-is-online'.$this->id);
}


=======
>>>>>>> cb440384ffbfa2513416cdb0761f9df4d79e0d23
}
