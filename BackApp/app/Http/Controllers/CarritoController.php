<?php

namespace App\Http\Controllers;

use App\Models\carrito;
use Illuminate\Http\Request;

class CarritoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       /*  $carrito = carrito::get();
        echo  json_encode($carrito); */   
        //echo "hola";
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $carrito = new carrito();
        $carrito->cantidad = $request->input('cantidad');
        $carrito->precioUnitario = $request->input('precioUnitario');
        $carrito->total = $request->input('total');
        $carrito->nombreProducto = $request->input('nombreProducto');
        $carrito->image = $request->input('image');
        $carrito->id_producto = $request->input('idProducto');
        $carrito->save();
        echo json_encode($carrito);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\carrito  $carrito
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        try {
            
            $elementos = carrito::where('id', $id)->get();
            return $elementos;  

        } catch (\Throwable $th) {
            return null;
        }
    }

    public function showAll(){
        try {

            $All = carrito::get();
            return $All;

        } catch (\Throwable $th) {
            return null;
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\carrito  $carrito
     * @return \Illuminate\Http\Response
     */
    public function edit(carrito $carrito)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\carrito  $carrito
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, carrito $carrito)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\carrito  $carrito
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {

            $elementos = carrito::where('id', $id)->get();
            $elementos->delete();
            return 'Se elimino Satisfactoriamente';

        } catch (\Throwable $th) {
            return 'Ha ocurrido un error';
        }
    }

    public function destroyAll()
    {
        try {

            $elementos = carrito::get();
            foreach($elementos as $element){
                $element->delete();
            }
            return 'Se elimino Satisfactoriamente';

        } catch (\Throwable $th) {
            return 'Ha ocurrido un error';
        }
    }
}
