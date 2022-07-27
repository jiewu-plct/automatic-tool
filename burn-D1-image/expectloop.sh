#! /usr/bin/expect

spawn bash expansionloop.sh
expect "Command (m for help): "
send "d\r"
expect "Partition number (1-4, default 4): "
send "4\r"
expect "Command (m for help): "
send "n\r"
expect "Partition number (4-128, default 4): "
send "4\r"
expect "First sector (100832-124735454, default 102400): "
send "100832\n"
expect "Last sector, +/-sectors or +/-size{K,M,G,T,P} (100832-124735454, default 124735454): "
send "\r"
expect {Do you want to remove the signature? [Y]es/[N]o: }
send "N\r"
expect "Command (m for help): "
send "w\r"
expect off