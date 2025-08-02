@extends('layouts.app')
<title>Dashboard</title>
  
@section('title', 'Dashboard')
  
@section('contents')
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Power BI Report</title>
</head>
<body style="margin: 0; padding: 0; height: 100%; overflow: hidden;">
<div>
    <iframe title="Report Section" width="100%" height="100%" src="https://app.powerbi.com/reportEmbed?reportId=7b540b0e-8c66-4220-b044-ea68116699df&autoAuth=true&ctid=91f0bcfd-c094-421c-9626-0e5875814d19" frameborder="0" allowFullScreen="true"></iframe>
</div>
</body>
</html>

@endsection
