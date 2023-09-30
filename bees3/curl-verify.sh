#!/bin/sh

# TODO (base64 is safe as json data?)
# 1. the signature arrives as base64 and needs to be decoded into u8[256] for pkcs1-verify
#    which means leave it as base64 in the json data value
# 2. the hashed is the digest of the base input text and already hexadecimal


curl -X POST -H "content-type: application/json" --verbose \
     --data @curl-data.json \
     http://10.80.8.18/verify
