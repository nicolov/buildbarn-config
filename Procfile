storage: bin/bb_storage -allow-ac-updates-for-instance=local -blobstore-config config/storage.conf -scheduler 'local|localhost:8981' -web.listen-address :7980
// cd into bin to find templates
browser: cd bin && ./bb_browser -blobstore-config ../config/storage-clients.conf -web.listen-address :7983
scheduler: bin/bb_scheduler -web.listen-address :7981
worker: bin/bb_worker -blobstore-config config/storage-clients.conf -browser-url http://10.252.11.120:7983 -build-directory tmp/build -cache-directory tmp/cache -concurrency 4 -runner unix://runner -scheduler localhost:8981 -web.listen-address :7984
runner: bin/bb_runner -build-directory tmp/build -listen-path runner
