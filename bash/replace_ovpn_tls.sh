#!/bin/bash

find "$1" -type f -name '*.ovpn' -print0 | xargs --null sed -i 's/tls-crypt>/tls-auth>/g'
