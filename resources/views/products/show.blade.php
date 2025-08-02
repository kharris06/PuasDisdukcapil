@extends('layouts.app')
<title>Detail Data</title>
  
@section('title')
  
@section('contents')
    <h1 class="mb-0">Detail Jawaban</h1>
    <hr />
    <div class="row">
        <div class="col mb-3">
            <label class="form-label">Id</label>
            <input type="text" name="id" class="form-control" placeholder="id" value="{{ $product->id }}" readonly>
        </div>
        <div class="col mb-3">
            <label class="form-label">Tanggal</label>
            <input type="text" name="date" class="form-control" placeholder="date" value="{{ $product->date}}" readonly>
        </div>
    </div>
    <div class="row">
        <div class="col mb-3">
            <label class="form-label">Jenis Layanan</label>
            <input type="text" name="jenis_layanan" class="form-control" placeholder="jenis_layanan" value="{{ $product->jenis_layanan }}" readonly>
        </div>
        <div class="col mb-3">
            <label class="form-label">Jenis Kelamin</label>
            <input type="text" name="jenis_kelamin" class="form-control" placeholder="jenis_kelamin" value="{{ $product->jenis_kelamin }}" readonly>
        </div>
        
    </div>
    <div class="row">
        <div class="col mb-3">
            <label class="form-label">Usia</label>
            <input type="number" name="usia" class="form-control" placeholder="usia" value="{{ $product->usia}}" readonly>
        </div>
        <div class="col mb-3">
            <label class="form-label">Pendidikan</label>
            <input type="text" name="pendidikan" class="form-control" placeholder="pendidikan" value="{{ $product->pendidikan }}" readonly>
        </div>
    </div>
    <div class="row">
        <div class="col mb-3">
            <label class="form-label">Pekerjaan</label>
            <input type="text" name="pekerjaan" class="form-control" placeholder="pekerjaan" value="{{ $product->pekerjaan}}" readonly>
        </div>
        <div class="col mb-3">
            <label class="form-label">Skor Unsur Persyaratan</label>
            <input type="text" name="P1" class="form-control" placeholder="P1" value="{{ $product->P1 }}" readonly>
        </div>
        
    </div>
    <div class="row">
        <div class="col mb-3">
            <label class="form-label">Skor Unsur Prosedur</label>
            <input type="text" name="P2" class="form-control" placeholder="P2" value="{{ $product->P2 }}" readonly>
        </div>
        <div class="col mb-3">
            <label class="form-label">Skor Unsur Kecepatan Waktu</label>
            <input type="text" name="P3" class="form-control" placeholder="P3" value="{{ $product->P3 }}" readonly>
        </div>
        
    </div>
    <div class="row">
        <div class="col mb-3">
            <label class="form-label">Skor Unsur Hasil</label>
            <input type="text" name="P4" class="form-control" placeholder="P4" value="{{ $product->P4 }}" readonly>
        </div>
        <div class="col mb-3">
            <label class="form-label">Skor Unsur Kompetensi Petugas</label>
            <input type="text" name="P5" class="form-control" placeholder="P5" value="{{ $product->P5 }}" readonly>
        </div>
        
    </div>
    <div class="row">
        <div class="col mb-3">
            <label class="form-label">Skor Unsur Keramahan Petugas</label>
            <input type="text" name="P6" class="form-control" placeholder="P6" value="{{ $product->P6 }}" readonly>
        </div>
        <div class="col mb-3">
            <label class="form-label">Skor Unsur Penanganan Pengaduan</label>
            <input type="text" name="P7" class="form-control" placeholder="P7" value="{{ $product->P7 }}" readonly>
        </div>
        
    </div>
    <div class="row">
        <div class="col mb-3">
            <label class="form-label">Skor Unsur Tindak Lanjut Pengaduan</label>
            <input type="text" name="P8" class="form-control" placeholder="P8" value="{{ $product->P8 }}" readonly>
        </div>
        <div class="col mb-3">
            <label class="form-label">Skor Unsur Sarana Prasarana</label>
            <input type="text" name="P9" class="form-control" placeholder="P9" value="{{ $product->P9 }}" readonly>
        </div>
        
    </div>
    <div class="row">
        <div class="col mb-3">
            <label class="form-label">Ulasan</label>
            <textarea class="form-control" name="ulasan" placeholder="ulasan" readonly>{{ $product->teks }}</textarea>
        </div>
    </div>
@endsection