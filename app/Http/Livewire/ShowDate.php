<?php

namespace App\Http\Livewire;

use Livewire\Component;

class ShowDate extends Component
{
 public $start_time;
 public $finish_time;
 public $price;
 public $quantity;
 public $result;
 public $total;

 public function GetTime(){
//     $this->start_time
 }

    public function render()
    {
        return view('livewire.show-date');
    }
}
