<?php

namespace App\Http\Controllers;

use App\Exports\DataExport;
use Maatwebsite\Excel\Facades\Excel;


use Illuminate\Support\Facades\DB;
use Illuminate\Support\Carbon;
use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
{
    // Query awal tanpa filter
    $query = Product::orderBy('date', 'DESC');

    // Jika terdapat filter atau pencarian
    if ($request->has('fromDate') && $request->has('toDate')) {
        $fromDate = $request->input('fromDate');
        $toDate = $request->input('toDate');

        // Tambahkan kondisi WHERE untuk filter tanggal
        $query->where('date', '>=', $fromDate)
              ->where('date', '<=', $toDate);
    }

    // Eksekusi query dan kirim data ke view
    $products = $query->get();
    return view('products.index', compact('products'));
}

  
    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('products.create');
    }

    // search
    public function search(Request $request)
    {
        $fromDate = $request->input('fromDate');
        $toDate = $request->input('toDate');
        $other = $request->input('other');

        $query = DB::table('products')->select()
            ->where('date', '>=', $fromDate)
            ->where('date', '<=', $toDate)
            ->where('jenis_kelamin', 'LIKE', '%' .$other. "%")
            ->where('usia', 'LIKE', '%' .$other. "%")
            ->where('pendidikan', 'LIKE', '%' .$other. "%")
            ->where('pekerjaan', 'LIKE', '%' .$other. "%")
            ->get();
        
        // Tampilkan query SQL yang dihasilkan
        dd($query->toSql());

        // Eksekusi query dan dapatkan hasilnya
        $results = $query->get();

        // Tampilkan hasil query di halaman
        return view('index', compact('results'));

    }

  
    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
{
    $request->validate([
        'date' => 'required|date',
        'jenis_kelamin' => 'required|in:Laki-Laki,Perempuan', 
        'usia' => 'required|integer', 
        'jenis_layanan' => 'required|in:Pengurusan KTP,Pengurusan KK,Pengurusan Akta,Pengurusan KIA,Pengurusan Surat Pindah,Lainnya',
        'pendidikan'=> 'required|in:SD,SMP,SMA,S1,S2,S3',
        'pekerjaan'=> 'required|in:PNS,TNI,POLRI,Swasta,Wirausaha,Pelajar,Tani,Lainnya',
        'P1' => 'required|integer|between:1,4',
        'P2' => 'required|integer|between:1,4',
        'P3' => 'required|integer|between:1,4',
        'P4' => 'required|integer|between:1,4',
        'P5' => 'required|integer|between:1,4',
        'P6' => 'required|integer|between:1,4',
        'P7' => 'required|integer|between:1,4',
        'P8' => 'required|integer|between:1,4',
        'P9' => 'required|integer|between:1,4',
        'teks' => 'nullable|string',
    ]);

    try {
        $data = $request->all();
        $data['additional_text'] = $request->teks ?? '';
        Product::create($data);
        return redirect()->route('products.create')->with('success', 'Terima kasih telah mengisi survei ini!');
    } catch (\Exception $e) {
        return redirect()->back()->withInput()->with('error', 'Error adding product: ' . $e->getMessage());
    }
}

  
    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $product = Product::findOrFail($id);
  
        return view('products.show', compact('product'));
    }
  
    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $product = Product::findOrFail($id);
  
        return view('products.edit', compact('product'));
    }
  
    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $product = Product::findOrFail($id);
  
        $product->update($request->all());
  
        return redirect()->route('products')->with('success', 'Data berhasil diperbarui');
    }
  
    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $product = Product::findOrFail($id);
  
        $product->delete();
  
        return redirect()->route('products')->with('success', 'Data berhasil dihapus');
    }

    public function dataexport(){
        return Excel::download(new DataExport, 'data_SKM.xlsx');
    }

}
