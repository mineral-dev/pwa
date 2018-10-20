//todo 7
var CACHE_NAME = 'pwa-cache';
var OFFLINE_URL = 'offline';

self.addEventListener('install', function(event) {
	event.waitUntil(
		fetchAndCache(OFFLINE_URL)
	);
});

self.addEventListener('fetch', function(event) {
  event.respondWith(
    caches.match(event.request)
    .then(function(response) {
      return response || fetchAndCache(event.request);
    })
  );
});

function fetchAndCache(url) {
  return fetch(url)
  .then(function(response) {
    // Check if we received a valid response
    if (!response.ok) {
      throw Error(response.statusText);
    }
    return caches.open(CACHE_NAME)
    .then(function(cache) {
      cache.put(url, response.clone());
      return response;
    });
  })
  .catch(function(error) {
    console.log('Request failed:', error);
    // return custom offline page
    return caches.match(OFFLINE_URL);
  });
}

//end todo 7

//todo 6
self.addEventListener('push', function(event) {
	
	var payload = event.data.text();

	event.waitUntil(
		self.registration.showNotification('Berita.com', {
			body: payload
		}
	));
});