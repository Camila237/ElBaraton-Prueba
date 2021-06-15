<?php

namespace App\Http\Controllers;

use App\Models\categorias;
use Illuminate\Http\Request;

class CategoriasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $Allcategorias = Categorias::get();
        echo  json_encode($Allcategorias);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $categoria = new Categorias();
        // echo $request;
        $categoria->nombre = $request->input('nombre');
        $categoria->save();
        echo json_encode($categoria);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\categorias  $categorias
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        try {

            $elementos = Categorias::findOrFail($id);
            return $elementos;  

        } catch (\Throwable $th) {
            return null;
        }
         
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\categorias  $categorias
     * @return \Illuminate\Http\Response
     */
    public function edit(categorias $categorias)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\categorias  $categorias
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, categorias $categorias)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\categorias  $categorias
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //metodo badrequest en caso de error al eliminar
        //POST GET DELETE PUT(edit)
        try {
            $elemento = Categorias::findOrFail($id);
            $elemento->delete();
            return 'Se elimino Satisfactoriamente';

        } catch (\Throwable $th) {
            return 'Ha ocurrido un error';
        }
    }
}
