var CACHE_NAME = 'pwa-cache';
var OFFLINE_URL = 'offline';

self.addEventListener('install', function(event) {
	event.waitUntil(
		fetchAndCache(OFFLINE_URL)
	);
});

self.addEventListener('fetch', function(event) {
  event.respondWith(
    fetchAndCache(event.request)
  )
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
    // try return from cache, if not found return offline page
    return caches.match(url).then(function(response) {
      return response || caches.match(OFFLINE_URL)
    })
  });
}

self.addEventListener('push', function(event) {
	
	var payload = event.data.text();

	event.waitUntil(
		self.registration.showNotification('Berita.com', {
			body: payload
		}
	));
});