<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\User;

class UserController extends Controller
{

    public function create()
    {
        return view("Adduser.Adduserform");


    }

    public function store(Request $requst)

    {

<<<<<<< HEAD
        $requst->img->storeAs("public/img",$requst->img->getClientOriginalName());
=======
        $requst->img->storeAs("public/img ",$requst->img->getClientOriginalName());
>>>>>>> cb440384ffbfa2513416cdb0761f9df4d79e0d23
        $imgname=$requst->img->getClientOriginalName();

        User::create(["name"=>$requst["name"],"email"=>$requst["email"],"password"=>$requst["password"],
        "address"=>$requst["address"],"img"=>$imgname,"role"=>$requst["role"],"phone"=>$requst["phone"],
        "gender"=>$requst["gender"],"country"=>$requst["country"]]);

        return redirect("user");

    }

    public function show()
    {

        $data=User::all();


        return view("adduser.usertable",compact("data"));
    }

    public function delete(User $id)
    {




         $id->delete();

          return redirect("user");


    }


}
