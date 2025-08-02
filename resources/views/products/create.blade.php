@extends('layouts.apppub')

@section('title', 'Survei Indeks Kepuasan Masyarakat')

<title>Survei IKM </title>

  
@section('contents')
    @if(Session::has('success'))
        <div class="alert alert-success" role="alert">
            {{ Session::get('success') }}
        </div>
    @endif

    @if(Session::has('error'))
        <div class="alert alert-danger" role="alert">
            {{ Session::get('error') }}
        </div>
    @endif

<div class="container">
    <div class="row">
        <!-- Left Column -->
        <div class="col-md-6 mb-5">  
<form action="{{ route('products.store') }}" method="POST" enctype="multipart/form-data">
@csrf

    <div class="mb-3" style="background-color: rgba(255, 255, 0, 0.3); padding: 10px; border-radius: 10px;">
        <label for="date" class="form-label">Tanggal</label>
        <input type="datetime-local" name="date" class="form-control" id="date">
    </div>

    <div class="mb-3" style="display: flex; flex-direction: column;background-color:#ffffff; padding: 10px; border-radius: 10px;">
        <label for="jenis_layanan" class="form-label">Jenis Layanan</label>
        <select class="form-select" name="jenis_layanan" id="jenis_layanan" required>
            <option value="" disabled selected>Pilih Jenis Layanan</option>
            <option value="Pengurusan KTP">Pengurusan KTP</option>
            <option value="Pengurusan KK">Pengurusan KK</option>
            <option value="Pengurusan Akta">Pengurusan Akta</option>
            <option value="Pengurusan KIA">Pengurusan KIA</option>
            <option value="Pengurusan Surat Pindah">Pengurusan Surat Pindah</option>
            <option value="Lainnya">Lainnya</option>
        </select>
    </div>

    <div class="mb-3" style="display: flex; flex-direction: column;background-color:#ffffff; padding: 10px; border-radius: 10px;">
        <label for="jenis_kelamin" class="form-label">Jenis Kelamin</label>
        <select class="form-select" name="jenis_kelamin" id="jenis_kelamin" required>
            <option value="" disabled selected>Pilih Jenis Kelamin</option>
            <option value="Laki-Laki">Laki-Laki</option>
            <option value="Perempuan">Perempuan</option>
        </select>
    </div>


    <div class="mb-3" style="background-color: rgba(255, 255, 0, 0.3); padding: 10px; border-radius: 10px;">
        <label for="usia" class="form-label">Usia</label>
            <input type="number" class="form-control" name="usia" id="usia" required>
    </div>

    <div class="mb-3" style="display: flex; flex-direction: column;background-color: #ffffff; padding: 10px; border-radius: 10px;">
        <label for="pendidikan" class="form-label">Pendidikan</label>
        <select class="form-select" name="pendidikan" id="pendidikan" required>
            <option value="" disabled selected>Pilih Pendidikan</option>
            <option value="SD">SD</option>
            <option value="SMP">SMP</option>
            <option value="SMA">SMA</option>
            <option value="S1">S1</option>
            <option value="S2">S2</option>
            <option value="S3">S3</option>
        </select>
    </div>

    <div class="mb-3" style="display: flex; flex-direction: column;background-color: #ffffff; padding: 10px; border-radius: 10px;">
        <label for="pekerjaan" class="form-label">Pekerjaan</label>
        <select class="form-select" name="pekerjaan" id="pekerjaan" required>
            <option value="" disabled selected>Pilih Pekerjaan</option>
            <option value="PNS">PNS</option>
            <option value="TNI">TNI</option>
            <option value="POLRI">POLRI</option>
            <option value="Swasta">Swasta</option>
            <option value="Wirausaha">Wirausaha</option>
            <option value="Pelajar">Pelajar</option>
            <option value="Tani">Tani</option>
            <option value="Lainnya">Lainnya</option>
        </select>
    </div>
    <hr style="margin-bottom: 40px;" />

    <!-- Label P1 -->
    <div class="mb-3" style="background-color: #fffff; padding: 10px; border-radius: 10px;">
        <label for="P1" class="form-label">Bagaimana kesesuaian persyaratan dalam pengurusan dokumen di Dinas Kependudukan dan Pencatatan Sipil Kabupaten Lima Puluh Kota?</label>
        <div class="mb-2">
        @for ($option = 1; $option <= 4; $option++)
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="P1" id="P1_{{ $option }}" value="{{ $option }}">
                <label class="form-check-label" for="P1_{{ $option }}">
                    @if($option == 1)
                        Tidak Sesuai
                    @elseif($option == 2)
                        Kurang Sesuai
                    @elseif($option == 3)
                        Sesuai
                    @else
                        Sangat Sesuai
                    @endif
                </label>
             </div>
        @endfor
        </div>
    </div>


    <!-- Label P2 -->
    <div class="mb-3" style="background-color: rgba(255, 255, 0, 0.3); padding: 10px; border-radius: 10px;">
        <label for="P2" class="form-label">Bagaimana kemudahan prosedur pelayanan di Dinas Kependudukan dan Pencatatan Sipil Kabupaten Lima Puluh Kota?</label>
        <div class="mb-2">
        @for ($option = 1; $option <= 4; $option++)
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="P2" id="P2_{{ $option }}" value="{{ $option }}">
                <label class="form-check-label" for="P2_{{ $option }}">
                    @if($option == 1)
                        Tidak Mudah 
                    @elseif($option == 2)
                        Kurang Mudah
                    @elseif($option == 3)
                        Mudah
                    @else
                        Sangat Mudah
                    @endif
                </label>
             </div>
        @endfor
        </div>
    </div>


    <!-- Label P3 -->
    <div class="mb-3" style="background-color: #fffff; padding: 10px; border-radius: 10px;">
        <label for="P3" class="form-label">Bagaimana waktu yang diperlukan dalam pelayanan oleh Dinas Kependudukan dan Pencatatan Sipil Kabupaten Lima Puluh Kota?</label>
        <div class="mb-2">
        @for ($option = 1; $option <= 4; $option++)
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="P3" id="P3_{{ $option }}" value="{{ $option }}">
                <label class="form-check-label" for="P3_{{ $option }}">
                    @if($option == 1)
                        Tidak Cepat
                    @elseif($option == 2)
                        Kurang Cepat
                    @elseif($option == 3)
                        Cepat
                    @else
                        Sangat Cepat
                    @endif
                </label>
             </div>
        @endfor
        </div>
    </div>
</div>
    <!-- Lanjutkan hingga P9 -->

    <!-- Label P4 -->
    <div class="col-md-6 mb-5">
    <div class="mb-3" style="background-color: rgba(255, 255, 0, 0.3); padding: 10px; border-radius: 10px;">
        <label for="P4" class="form-label">Bagaiman kesesuaian hasil layanan dengan ketentuan yang telah didapatkan (Contoh: Jika mengurus KTP, maka masyarakat mendapatkan KTP, bukan KK)</label>
        <div class="mb-2">
        @for ($option = 1; $option <= 4; $option++)
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="P4" id="P4_{{ $option }}" value="{{ $option }}">
                <label class="form-check-label" for="P4_{{ $option }}">
                    @if($option == 1)
                        Tidak Sesuai
                    @elseif($option == 2)
                        Kurang Sesuai
                    @elseif($option == 3)
                        Sesuai
                    @else
                        Sangat Sesuai
                    @endif
                </label>
             </div>
        @endfor
        </div>
    </div>

    <!-- Label P5 -->
    <div class="mb-3" style="background-color: #ffffff; padding: 10px; border-radius: 10px;">
        <label for="P5" class="form-label">Bagaimana kompetensi yang dimiliki petugas Dinas Kependudukan dan Pencatatan Sipil Kabupaten Lima Puluh Kota dalam memberikan pelayanan?</label>
        <div class="mb-2">
        @for ($option = 1; $option <= 4; $option++)
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="P5" id="P5_{{ $option }}" value="{{ $option }}">
                <label class="form-check-label" for="P5_{{ $option }}">
                    @if($option == 1)
                        Tidak Kompeten
                    @elseif($option == 2)
                        Kurang Kompenten
                    @elseif($option == 3)
                        Kompeten
                    @else
                        Sangat Kompeten
                    @endif
                </label>
             </div>
        @endfor
        </div>
    </div>

    <!-- Label P6 -->
    <div class="mb-3" style="background-color: rgba(255, 255, 0, 0.3); padding: 10px;border-radius: 10px;">
        <label for="P6" class="form-label">Bagaimana keramahan petugas Dinas Kependudukan dan Pencatatan Sipil Kabupaten Lima Puluh Kota dalam memberikan pelayanan?</label>
        <div class="mb-2">
        @for ($option = 1; $option <= 4; $option++)
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="P6" id="P6_{{ $option }}" value="{{ $option }}">
                <label class="form-check-label" for="P6_{{ $option }}">
                    @if($option == 1)
                        Tidak Ramah
                    @elseif($option == 2)
                        Kurang Ramah
                    @elseif($option == 3)
                        Ramah
                    @else
                        Sangat Ramah
                    @endif
                </label>
             </div>
        @endfor
        </div>
    </div>

    <!-- Label P7 -->
    <div class="mb-3" style="background-color: #ffffff; padding: 10px; border-radius: 10px;">
        <label for="P7" class="form-label">Seberapa puas Anda terhadap penanganan pengaduan oleh Dinas Kependudukan dan Pencatatan Sipil Kabupaten Lima Puluh Kota?</label>
        <div class="mb-2">
        @for ($option = 1; $option <= 4; $option++)
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="P7" id="P7_{{ $option }}" value="{{ $option }}">
                <label class="form-check-label" for="P7_{{ $option }}">
                    @if($option == 1)
                        Tidak Puas
                    @elseif($option == 2)
                        Kurang Puas
                    @elseif($option == 3)
                        Puas
                    @else
                        Sangat Puas
                    @endif
                </label>
             </div>
        @endfor
        </div>
    </div>

    <!-- Label P8 -->
    <div class="mb-3" style="background-color: rgba(255, 255, 0, 0.3); padding: 10px; border-radius: 10px;">
        <label for="P8" class="form-label">Bagaimana tindak lanjut pengaduan yang diberikan Dinas Kependudukan dan Pencatatan Sipil Kabupaten Lima Puluh Kota?</label>
        <div class="mb-2">
        @for ($option = 1; $option <= 4; $option++)
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="P8" id="P8_{{ $option }}" value="{{ $option }}">
                <label class="form-check-label" for="P8_{{ $option }}">
                    @if($option == 1)
                        Tidak Ada
                    @elseif($option == 2)
                        Kurang Berfungsi
                    @elseif($option == 3)
                        Kurang Maksimal
                    @else
                        Dikelola dengan baik
                    @endif
                </label>
             </div>
        @endfor
        </div>
    </div>


    <!-- Label P9 -->
    <div class="mb-3" style="background-color: #ffffff; padding: 10px; border-radius: 10px;">
        <label for="P9" class="form-label">Bagaimana kenyamanan sarana prasarana yang ada di Dinas Kependudukan dan Pencatatan Sipil Kabupaten Lima Puluh Kota?</label>
        <div class="mb-2">
        @for ($option = 1; $option <= 4; $option++)
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="P9" id="P9_{{ $option }}" value="{{ $option }}">
                <label class="form-check-label" for="P9_{{ $option }}">
                    @if($option == 1)
                        Tidak Nyaman
                    @elseif($option == 2)
                        Kurang Nyaman
                    @elseif($option == 3)
                        Nyaman
                    @else
                        Sangat Nyaman
                    @endif
                </label>
             </div>
        @endfor
        </div>
    </div>

    <div class="mb-3" style="background-color: rgba(255, 255, 0, 0.3); padding: 10px; border-radius: 10px;">
        <label for="teks" class="form-label">Masukan, Saran, dan Ulasan</label>
        <textarea class="form-control" name="teks" id="teks"></textarea>
    </div>

    <div class="mb-3">
        <div class="d-grid">
            <button type="submit" class="btn btn-primary">Kirim Jawaban</button>
        </div>
    </div>
</form>

<script>
        function validateForm() {
            // Validasi tambahan jika diperlukan
            return true; // Kembalikan true jika formulir valid, false jika tidak
        }
</script>

@endsection