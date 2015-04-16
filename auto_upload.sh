#!/usr/bin/expect

set username [lindex $argv 0]
set password [lindex $argv 1]
send_user "$username:$password"

spawn ./manual_update.sh 
expect "Username for *:"
send "$username\r"

expect "Password for *:"
send "$password\r"
#expect eof
interact

