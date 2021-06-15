<?php

namespace App\Http\Controllers;

use App\Models\productos;
use Illuminate\Http\Request;

class ProductosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $Allproductos = productos::get();
        echo  json_encode($Allproductos);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $entrada=$request->all();
        // echo $entrada;
        if($archivo=$request->file('imagen')){
            echo 'ok!';
            $nombre=$archivo->getClientOriginalName();

            $archivo->move('images', $nombre);

            $entrada['imagen']=$nombre;
        }

        productos::create($entrada);
        echo json_encode($entrada); 
        return 'Guardado Satisfactoriamente !';
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\productos  $productos
     * @return \Illuminate\Http\Response
     */
    public function show($id){

        try{

            $elementos = productos::where('id_Subnivel', $id)->get();
            return $elementos;

        }catch (\Throwable $th) {
            return null;
        }
    }

    public function mostrar($id)
    {
        try {

            $elementos = productos::findOrFail($id);
            return $elementos;

        } catch (\Throwable $th) {
            return null;
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\productos  $productos
     * @return \Illuminate\Http\Response
     */
    public function edit(productos $productos)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\productos  $productos
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, productos $productos)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\productos  $productos
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $elemento = productos::findOrFail($id);
            $elemento->delete();
            return 'Se elimino Satisfactoriamente';

        } catch (\Throwable $th) {
            return 'Ha ocurrido un error';
        }
    }
}