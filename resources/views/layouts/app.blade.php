<!DOCTYPE html>
<!--

            _                      _   
  _ __ ___ (_)_ __   ___ _ __ __ _| |  
 | '_ ` _ \| | '_ \ / _ \ '__/ _` | |  
 | | | | | | | | | |  __/ | | (_| | |_ 
 |_| |_| |_|_|_| |_|\___|_|  \__,_|_(_)

 site       : http://mineral.co.id
 email      : hello@mineral.co.id
 twitter    : @mineralstudio

-->






<html lang="en" class="no-js mineral-id">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>
        @if(View::hasSection('title'))
            @yield('title') - 
        @endif
            {{ config('app.name') }}
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!--Todo 1-->

    <meta name="description" content="Mineral PWA Lab">
    <base href="{{ url('/').'/' }}" />
    <link rel="icon" type="image/png" href="assets/icon/icon.png">
    <script src="assets/script.js"></script>
    <link rel="stylesheet" href="assets/style.css">
    <script>
        window.App = {!! json_encode([
            'csrfToken' => csrf_token(),
            'baseUrl' => url('/').'/'
        ]) !!};
    </script>
</head>
<body class="@yield('body_class')">
    @include('partials.header')
    @yield('content')
    @include('partials.footer')

    <!--Todo 4-->

    <!--Todo 5-->
</body>
</html>