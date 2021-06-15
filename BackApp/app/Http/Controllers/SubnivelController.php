<?php

namespace App\Http\Controllers;

use App\Models\subnivel;
use Illuminate\Http\Request;

class SubnivelController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        echo 'Hellos Subnivel!';
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $Subnivel = new subnivel();
        $Subnivel->nombre = $request->input('nombre');
        $Subnivel->id_subcategoria = $request->input('idSubcategoria');
        $Subnivel->save();
        echo json_encode($Subnivel);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\subnivel  $subnivel
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        try {

            $elementos = subnivel::where('id_subcategoria', $id)->get();
            //$elementos = subnivel::findOrFail($id);
            return $elementos;  

        } catch (\Throwable $th) {
            return null;
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\subnivel  $subnivel
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\subnivel  $subnivel
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, subnivel $subnivel)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\subnivel  $subnivel
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $elemento = subnivel::findOrFail($id);
            $elemento->delete();
            return 'Se elimino Satisfactoriamente';

        } catch (\Throwable $th) {
            return 'Ha ocurrido un error';
        }
    }
}
