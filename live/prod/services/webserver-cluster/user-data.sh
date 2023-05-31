#!/bin/bash

cat > index.html <<EOF
<h1>Cześć Franek, co tam u Ciebie slychac?</h1>
<p>Adres bazy danych: ${db_address}</p>
<p>Numer portu bazy danych to: ${db_port}</p>
EOF

nohup busybox httpd -f -p ${server_port} &