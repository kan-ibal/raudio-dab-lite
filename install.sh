#!/bin/bash

mv /usr/bin/dab-rtlsdr-3 /usr/bin/dab-rtlsdr-3.org
curl -L https://github.com/kan-ibal/raudio-dab-lite/raw/refs/heads/main/dab-rtlsdr-3 -o /usr/bin/dab-rtlsdr-3


sed -i 's|-b:a 160k \\|-b:a 128k \\|'  /srv/http/bash/dab-start.sh
sed -i 's|-c:a aac \\|-c:a mp2 \\|'  /srv/http/bash/dab-start.sh

