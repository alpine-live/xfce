#!/bin/bash
set +e
cd /tmp
apk add wget curl
curl -L https://github.com/alpine-live/17g-alpine/releases/download/4.4.2/17g-installer-4.4.2-r0.apk -o 17g.apk
apk add *.apk --allow-untrusted
ln -s true /bin/locale-gen || true
