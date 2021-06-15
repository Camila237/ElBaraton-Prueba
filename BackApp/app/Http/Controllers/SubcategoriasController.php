<?php

namespace App\Http\Controllers;

use App\Models\subcategorias;
use Illuminate\Http\Request;

class SubcategoriasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        echo 'Hello Subcategorias';
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $Subcategoria = new subcategorias();
        $Subcategoria->nombre = $request->input('nombre');
        $Subcategoria->id_categoria = $request->input('idCategoria');
        $Subcategoria->save();
        echo json_encode($Subcategoria);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\subcategorias  $subcategorias
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        try {

            $elementos = subcategorias::where('id_categoria', $id)->get();
            return $elementos;  

        } catch (\Throwable $th) {
            return null;
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\subcategorias  $subcategorias
     * @return \Illuminate\Http\Response
     */
    public function edit(subcategorias $subcategorias)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\subcategorias  $subcategorias
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, subcategorias $subcategorias)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\subcategorias  $subcategorias
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $elemento = subcategorias::findOrFail($id);
            $elemento->delete();
            return 'Se elimino Satisfactoriamente';

        } catch (\Throwable $th) {
            return 'Ha ocurrido un error';
        }
    }
}
