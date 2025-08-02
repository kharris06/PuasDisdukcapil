@extends('layouts.app')
<title>Data</title>
  
@section('title', 'Data Jawaban Survey')
  
@section('contents')
    <div class="d-flex align-items-center justify-content-between">
    </div>
    <hr />

    @if(Session::has('success'))
        <div class="alert alert-success" role="alert">
            {{ Session::get('success') }}
        </div>
    @endif

    @if(Session::has('success'))
        <div class="alert alert-success" role="alert">
            {{ Session::get('success') }}
        </div>
    @endif

    <div class='container'>
    <div class="card card-info card-outline">
        <div class="card-header"><a href="{{ route('dataexport')}}" class="btn btn-success">Export Data </a></div>
    </div>





<div class="table-responsive">
    <table class="table table-hover">
        <thead class="table-primary">
            <tr>
                <th>id</th>
                <th>Jenis Layanan</th>
                <th>Tanggal</th>
                <th>Jenis Kelamin</th>
                <th>Usia</th>
                <th>Pendidikan</th>
                <th>Pekerjaan</th>
                <th>P1</th>
                <th>P2</th>
                <th>P3</th>
                <th>P4</th>
                <th>P5</th>
                <th>P6</th>
                <th>P7</th>
                <th>P8</th>
                <th>P9</th>
                <th>Ulasan</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @if($products->count() > 0)
                @foreach($products as $rs)
                    <tr>
                        <td class="align-middle">{{ $rs->id }}</td>
                        <td class="align-middle">{{ $rs->date }}</td>
                        <td class="align-middle">{{ $rs->jenis_layanan }}</td>
                        <td class="align-middle">{{ $rs->jenis_kelamin }}</td>
                        <td class="align-middle">{{ $rs->usia }}</td>
                        <td class="align-middle">{{ $rs->pendidikan }}</td>
                        <td class="align-middle">{{ $rs->pekerjaan }}</td>
                        <td class="align-middle">{{ $rs->P1 }}</td>
                        <td class="align-middle">{{ $rs->P2 }}</td>
                        <td class="align-middle">{{ $rs->P3 }}</td>
                        <td class="align-middle">{{ $rs->P4 }}</td>
                        <td class="align-middle">{{ $rs->P5 }}</td>
                        <td class="align-middle">{{ $rs->P6 }}</td>
                        <td class="align-middle">{{ $rs->P7 }}</td>
                        <td class="align-middle">{{ $rs->P8 }}</td>
                        <td class="align-middle">{{ $rs->P9 }}</td>
                        <td class="align-middle">{{ $rs->teks }}</td>
                        <td class="align-middle">
                            <div class="btn-group" role="group" aria-label="Basic example">
                                <a href="{{ route('products.show', $rs->id) }}" class="btn btn-secondary btn-sm">Detail</a>
                                <form action="{{ route('products.destroy', $rs->id) }}" method="POST" onsubmit="return confirm('Delete?')">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger btn-sm m-0">Delete</button>
                                </form>
                            </div>
                        </td>
                    </tr>
                @endforeach
            @else
                <tr>
                    <td class="text-center" colspan="16">Product not found</td>
                </tr>
            @endif
        </tbody>
    </table>
@endsection