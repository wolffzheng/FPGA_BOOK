#!/usr/bin/expect

set username [lindex $argv 0]
set password [lindex $argv 1]
send_user "$username:$password"

spawn ./manual_update.sh 
expect "*https://github.com*"
send "$username\r"

expect "*wolffzheng@github.com*"
send "$password\r"
#expect eof
interact

