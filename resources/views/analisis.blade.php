@extends('layouts.app')
<title>Analisis</title>
  
@section('title', 'Analisis')
@section('contents')
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wordcloud Ulasan</title>
    <style>
        body {
            text-align: left; /* Teks dan gambar diatur di sebelah kiri */
            margin: 0px; /* Memberikan margin untuk memberikan jarak di sekitar elemen */
        }

        h1 {
            font-size: 1.2em; /* Ukuran font judul */
        }

        #wordcloud {
            max-width: 60%; /* Maksimum lebar gambar */
            height: auto; /* Tinggi otomatis untuk mempertahankan rasio aspek */
            margin-top: 10px; /* Margin atas untuk memberikan jarak di atas gambar */
        }
    </style>
</head>
<body>

<h1>Wordcloud Ulasan</h1>

<img id="wordcloud" src="/visual/wordcloud-IKM.jpg" alt="wordcloud-IKM">

</body>
</html>

@endsection