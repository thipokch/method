'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "manifest.json": "17ba1e8f9ceb2bf835fc05bbda190fe8",
"main.dart.js": "f89ddfddc3535f681ab1b6d8001a0b9f",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "9d9d287ac1c7715260d443576719a098",
"/": "9d9d287ac1c7715260d443576719a098",
"version.json": "d76efbbbf53fed8d7a388a749ebd6400",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"stg/google-services.js": "b7fabd5aeec151821eb66acce9acdc7d",
"flutter.js": "eb2682e33f25cd8f1fc59011497c35f8",
"dev/google-services.js": "ede4e0afe0387eaaa05b310fa0cf7263",
"prd/google-services.js": "9a8f8e36ab4243fd23f3733c4460fb83",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/element/fonts/NotoSans-ExtraBold.ttf": "2cc6e79e65da29bd416f187ececac850",
"assets/packages/element/fonts/NotoSans-SemiBoldItalic.ttf": "4c897560ba5892727d5148382ed95fee",
"assets/packages/element/fonts/NotoSans-Bold.ttf": "8ac165243fb633296963b149f206a377",
"assets/packages/element/fonts/NotoSans-Light.ttf": "1853a578246d1b2182b73ee5fadd57b7",
"assets/packages/element/fonts/NotoSans-Regular.ttf": "ac08e269b7f479624b266c0ea20013b4",
"assets/packages/element/fonts/NotoSans-Italic.ttf": "a0d473318296d528aa7a8ebf7332d32e",
"assets/packages/element/fonts/NotoSans-ExtraLightItalic.ttf": "4075fadf31c9950b08a893b71fff95fb",
"assets/packages/element/fonts/NotoSans-MediumItalic.ttf": "a4d9f584d8f767cf484cf12efc5ff8d2",
"assets/packages/element/fonts/NotoSans-Medium.ttf": "f2197cc8a55ba75995cd38d00e8be599",
"assets/packages/element/fonts/NotoSans-BlackItalic.ttf": "f84cbfd32f5802721c44c2cae7e02039",
"assets/packages/element/fonts/NotoSans-BoldItalic.ttf": "e98f24e7e061da54e4a80cea7d376ed8",
"assets/packages/element/fonts/NotoSans-Thin.ttf": "80459ea7de432a2999dd0c3afa6fe747",
"assets/packages/element/fonts/NotoSans-SemiBold.ttf": "63bbc52e6ef89a5b1a50f1c9c4710d1b",
"assets/packages/element/fonts/NotoSans-ExtraBoldItalic.ttf": "15a3bf57c6941e1dc1208d20808fcaef",
"assets/packages/element/fonts/NotoSans-LightItalic.ttf": "936d1139c39ebb63f7a3eae0140e0bd2",
"assets/packages/element/fonts/NotoSans-ThinItalic.ttf": "39e5be5d9cb2341b3dea1164450173fc",
"assets/packages/element/fonts/NotoSans-Black.ttf": "bd5128e54a5262c4ceacd4a823dc2fc8",
"assets/packages/element/fonts/NotoSans-ExtraLight.ttf": "2e7ecb3f8f24b1f0c331f76a405281e5",
"assets/NOTICES": "2c90151e7b7b91e8bcc638583802da61",
"assets/AssetManifest.json": "84031bc9cfb31ed44813f7577824e4fd",
"assets/FontManifest.json": "632951c1696990b540e7b5495d0a1119",
"splash/style.css": "051d090817004f223014d935c4396f01",
"splash/splash.js": "123c400b58bea74c1305ca3ac966748d",
"splash/img/dark-4x.png": "5833e71b3ddf8bc9feafe6a27a260f4d",
"splash/img/dark-2x.png": "24e381b01cd892038a5e26baccc4f8e7",
"splash/img/light-1x.png": "addfafa04d0ba75a3a6fa7b34de1e43f",
"splash/img/light-3x.png": "70aec809f8b48c2d1542b027721b05d0",
"splash/img/light-2x.png": "24e381b01cd892038a5e26baccc4f8e7",
"splash/img/dark-1x.png": "addfafa04d0ba75a3a6fa7b34de1e43f",
"splash/img/light-4x.png": "5833e71b3ddf8bc9feafe6a27a260f4d",
"splash/img/dark-3x.png": "70aec809f8b48c2d1542b027721b05d0",
"favicon.png": "5dcef449791fa27946b3d35ad8803796"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
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
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
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
  for (var resourceKey of Object.keys(RESOURCES)) {
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
