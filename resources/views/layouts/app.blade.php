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

    <!--PWA STEP 1-->
    <link rel="manifest" href="manifest.json" />
    <!-------------->

</head>
<body class="@yield('body_class')">
    @include('partials.header')
    @yield('content')
    @include('partials.footer')

    <!--PWA STEP 2-->
    <script type="text/javascript">

    navigator.serviceWorker && navigator.serviceWorker.register('./service-worker.js').then(function(registration) {
      console.log('Service Worker berhasil diinstall');
    });

    </script>
    <!-------------->

    <!--PWA STEP 3-->
    <script type="text/javascript">

    //dapatkan public key and private key dari https://web-push-codelab.glitch.me/
    const publicKey = 'BAbFX3-MzGEDi1aE_p3x1QhsgcSv8vXN6XUI9jGwDxHkZNYlDCTIzFb-xMmoeJauTH_1NDlqEzwWzIUjRW0R0hU';

    navigator.serviceWorker && navigator.serviceWorker.ready.then(function(serviceWorkerRegistration) {  
        serviceWorkerRegistration.pushManager.getSubscription()  
        .then(function(subscription) {  
            
            // check apabila object PushSubscription sudah ada
            if (subscription) {
                console.info('subscription sudah ada', JSON.stringify(subscription));
                window.subscription = subscription;
                return;  // Subscription sudah ada
            }

            const applicationServerKey = urlB64ToUint8Array(publicKey);
            serviceWorkerRegistration.pushManager.subscribe({
                userVisibleOnly: true,
                applicationServerKey,
            })
            .then(function(subscription) { 
                console.info('Subscribed to push!', JSON.stringify(subscription));
                window.subscription = subscription;
            }).catch(function(err) {
                if (Notification.permission === 'denied') {
                    console.warn('Perimission Notifikasi ditolak');
                } else {
                    console.error('Gagal untuk subscribe push : ', err);
                }
            });
        });
    });

    function urlB64ToUint8Array(base64String) {
        const padding = '='.repeat((4 - base64String.length % 4) % 4);
        const base64 = (base64String + padding)
            .replace(/\-/g, '+')
            .replace(/_/g, '/');

        const rawData = window.atob(base64);
        const outputArray = new Uint8Array(rawData.length);

        for (let i = 0; i < rawData.length; ++i) {
        outputArray[i] = rawData.charCodeAt(i);
        }
        return outputArray;
    }
    
    </script>
    <!------------>

</body>
</html>