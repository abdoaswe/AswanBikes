<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Notifications\InvoicePaid;
use Illuminate\Support\Facades\Notification;


class testdataController extends Controller
{

    public function notification($user){
        
         $user->notify(new InvoicePaid($user));

    }


}
