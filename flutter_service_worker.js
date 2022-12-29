'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "a668f933a630ffe49e2c80dbefea70f1",
"assets/assets/icons/back_icon.png": "6edb15e65920794e82009b21e9ef6b66",
"assets/assets/icons/back_widget.png": "8647a2ea35814ddc589e4486409d9028",
"assets/assets/icons/finding_icon.png": "738099be0fe14c66cab69cd85b497c06",
"assets/assets/icons/license.png": "97696cbc585ed36aea7d9f3b037410e5",
"assets/assets/icons/minus_icon.png": "4b06c708fd5e1e9988c0674e87ecad5f",
"assets/assets/icons/noti_icon.png": "14fd75e75e3c8ed94fe503bb5cb61393",
"assets/assets/icons/open_door_icon.png": "65c693a5c4988e64c289a669f6405610",
"assets/assets/icons/photo_icon.png": "69e855e35536d860559378269a49ac65",
"assets/assets/icons/plus_icon.png": "21d341d530da4ac94c55fbcda28ea216",
"assets/assets/icons/setting_icon.png": "77ad71698534dfc19359d75022460453",
"assets/assets/images/auth/%25D1%2584%25D0%25B8%25D0%25B3%25D0%25BE%25D0%25B2%25D0%25BE%25D0%25B5%2520%25D0%25BA%25D0%25B0%25D1%2587%25D0%25B5%25D1%2581%25D1%2582%25D0%25B2%25D0%25BE.png": "ba83b7f7b42de1d9665d37ff9b8ead57",
"assets/assets/images/auth/back_auth_screen_3.jpg": "b61b0e0f4ae9eff2e9199bc435f26d60",
"assets/assets/images/clubs/la_nostra.png": "d2df6e09eaa614137700a66b9ab726de",
"assets/assets/images/diagraph/dia.png": "d0e96a4c3fb0437056c57551e433ea43",
"assets/assets/images/diagraph/graph.png": "5a5051254f777bdb08f665d63acaaf5f",
"assets/assets/images/diagraph/mafia.png": "29e4c7f8915cde4be26813454fe87d0b",
"assets/assets/images/diagraph/man.png": "7fe67af33de648737a89b6621fca8e30",
"assets/assets/images/diagraph/woman.png": "d90ad70b640dbb111b8982644f55bf9a",
"assets/assets/images/diagraph/zhulic.png": "97ad89981d188ebc7c82a013c23e7650",
"assets/assets/images/main/back_main_screen.png": "2d027fb13c3f09c14e928232fbee27e9",
"assets/assets/images/people/vika.png": "dafb80360b21372835365ede167c4473",
"assets/FontManifest.json": "2153bf5e82c4b6013d9ea71003006a86",
"assets/fonts/CormorantUnicase/CormorantUnicase-Bold.ttf": "e40c4ecdae69c2943349b038d4da5299",
"assets/fonts/CormorantUnicase/CormorantUnicase-Light.ttf": "915c7bb852f9b1326bfabf98aeaba4e1",
"assets/fonts/CormorantUnicase/CormorantUnicase-Medium.ttf": "de163d9504384b22bd0abcf31207e693",
"assets/fonts/CormorantUnicase/CormorantUnicase-Regular.ttf": "0e48a47f97d67e5763d08724d1cd0631",
"assets/fonts/CormorantUnicase/CormorantUnicase-SemiBold.ttf": "274e38287c5a44b73392cc6e13580f9e",
"assets/fonts/CormorantUnicase/Oranienbaum-Regular.ttf": "3035e8335bae411be1a742def4fbab59",
"assets/fonts/CormorantUnicase/PoiretOne-Regular.ttf": "8d15f9c0d468e1de889e81fae1087b61",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/NOTICES": "62a2e63c8e30d03c0e6607685a44638c",
"assets/shaders/ink_sparkle.frag": "0bafb443a430ec3f87f0e90564495c2d",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "a125ba7bd7034367822069ae74eb016f",
"/": "a125ba7bd7034367822069ae74eb016f",
"main.dart.js": "8b26669a612d2750e5de621a961384b7",
"manifest.json": "a05e821bc10754460ea402ca1cae0df5",
"version.json": "854e4a997af5bdb89adb53dec5fde412"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
