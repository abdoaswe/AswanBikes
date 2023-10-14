


@extends("web/dashtemp")
<<<<<<< HEAD
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
=======
>>>>>>> cb440384ffbfa2513416cdb0761f9df4d79e0d23
@section("body")



<br>

<center>
    <a href="{{route("store")}}"><button type="button" >Add</button></a>

  <table >
  <thead>

    <tr>
        <th scope='col'>#</th>
        <th scope='col'>Name</th>
        <th scope='col'>Email</th>
        <th scope='col'>phone</th>
        {{-- <th scope='col'>pass</th> --}}
        <th scope='col'>address</th>
        <th scope='col'>gender</th>
<<<<<<< HEAD
        <th scope='col'>Status</th>
=======

>>>>>>> cb440384ffbfa2513416cdb0761f9df4d79e0d23
        <th scope='col'>img</th>

        <th scope='col'>action</th>

      </tr>
  </thead>
  <tbody>
    @foreach($data as $item)

       <tr>
        <th scope='row'>{{$item["id"]}}</th>

        <td> {{$item["name"]}}</td>
        <td> {{$item["email"]}}</td>
        <td> {{$item["phone"]}}</td>
        {{-- <td> {{$item["password"]}}</td> --}}
        <td> {{$item["address"]}}</td>
        <td> {{$item["gender"]}}</td>
<<<<<<< HEAD
          {{-- {{ dd($item->Isonline()) }} --}}
        @if ($item->Isonline())
        <td class="text-success">Online</td>

@else

<td class="text-muted">Offline</td>

@endif
=======
        
>>>>>>> cb440384ffbfa2513416cdb0761f9df4d79e0d23
        <td><img src="storage/img/{{$item["img"]}}" alt="" width="100px"> </td>

        <td> <a href="{{route("delete",["id"=>$item["id"]])}}"><button type='button' >DELETE</button></a>

            {{-- <a href="{{route("store",["id"=>$item["id"]])}}"><button type="button" >Add</button></a> </td> --}}
      </tr>

      @endforeach


  </tbody>
</table>
</center>
  </body>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
@endsection
</html>

