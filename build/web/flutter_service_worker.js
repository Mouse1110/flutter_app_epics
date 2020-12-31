'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "59eb8cc002800ee00d12fd9d8b3db603",
"assets/assets/images/bottom_img_1.png": "9f62a10df50dbac13dfe4ef6911053e3",
"assets/assets/images/bottom_img_2.png": "048ef6167b9d28ddf6f3c8be98d4bdfd",
"assets/assets/images/heart1.png": "3b2d8653efaec328eecfd79744a602e5",
"assets/assets/images/heart2.png": "bb305cfa4abbaf2b4b5cb594dbd3c362",
"assets/assets/images/image_1.png": "4e100c6056ca67572abb11a23626773a",
"assets/assets/images/image_2.png": "ac500e92f625b5cceabcefaec670da59",
"assets/assets/images/image_3.png": "b1a6125791100a2c73d57b1ee4937a8e",
"assets/assets/images/image_4.png": "f095ec5975166175753cac174166b19e",
"assets/assets/images/img.png": "d0dfb918c39695889777b347b2080a6e",
"assets/assets/images/img_avatar.png": "f6452627ebf17b2390f8a711fd040e53",
"assets/assets/images/img_bachmahoangtu.jpg": "7fc8485bdf280bdc98beac18fe540902",
"assets/assets/images/img_bangsingapo.jpg": "d8f5dae89a62db22027ed57bf1dec624",
"assets/assets/images/img_cayconhat.jpg": "7cb3389672b54d29f7112d6b20aefb71",
"assets/assets/images/img_caykimngan.jpg": "f2a65ffaddb7b7a4e030387faad66af0",
"assets/assets/images/img_caykimtien.jpg": "07a9c979e6185a96d06f2c084e5ce9a3",
"assets/assets/images/img_cayluoiho.jpg": "36bfe5e92226d8c6aced0dfbd04e5d00",
"assets/assets/images/img_cayngocngan.jpg": "b1e95503e9356371a7e2bb0d260ac5d2",
"assets/assets/images/img_cayphatloc.jpg": "dd79dc71db7bd54d8ca44151a4b637ee",
"assets/assets/images/img_caytrauba.jpg": "24fcaf409f4ffafa55dd0dbb5f93fe77",
"assets/assets/images/img_cayvanloc.jpg": "bdaf265b68007f58ec22b4b2cd805029",
"assets/assets/images/img_daiphugia.jpg": "2c1ba30ac27bc517d99dc8a950ba7218",
"assets/assets/images/img_main.png": "3777e97bd18084e42016641d40c3a30d",
"assets/assets/images/img_thietmoclan.jpg": "1b6c8cec3d50868101c1b4b3682f2b6a",
"assets/assets/images/img_trucbachhop.jpg": "e6aeb563a2dbd974718d2b1c51057f0a",
"assets/assets/images/logo.png": "86d4dc5cbadc8459349e2e75e8c3000a",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/NOTICES": "aa7eca8910a6ffbf7e875b0da34e1d2b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "b14fcf3ee94e3ace300b192e9e7c8c5d",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "bd1ea714fba2665adc53d437e032d108",
"/": "bd1ea714fba2665adc53d437e032d108",
"main.dart.js": "99800f3282ca241fff07e12a1225e82c",
"manifest.json": "047d53fef38e7c8f93de772db43c98e9",
"version.json": "da520ce25cf6b4621aa6b7f955908579"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey in Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
