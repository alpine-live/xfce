#!/bin/bash
set +e
cd /tmp
apk add wget curl
curl -L https://github.com/alpine-live/17g-alpine/releases/download/current/17g-installer-4.4.1-r0.apk -o 17g.apk
apk add *.apk --allow-untrusted
ln -s true /bin/locale-gen || true
