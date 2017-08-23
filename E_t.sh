#!/usr/expect/bin/expect -f
send_user "You are the best\r\n"
set timeout 30
set host "10.10.29.45"
set name "apc\r"
set login "User Name :"
set passw "Password  :"
set pw "apc\r"
set symbol ">"
set selete1 "1\r"
set selete2 "2\r"
#set selete3 "3\r"
set seleteY "YES\r"
set cont    "\r"

spawn telnet $host   
expect $login   
send $name
expect $passw
send $pw
expect $symbol
send $selete1

expect $symbol
send $selete2
expect $symbol
send $selete1

expect $symbol
send $selete2
expect $symbol
send $selete1

set count 100
for {set i 1} {$i<=100} {incr i} {
expect $symbol #off
send $selete2
expect $symbol
send $seleteY
send $cont

expect $symbol #on
send $selete1
expect $symbol
send $seleteY
send $cont
sleep 16
}

interact
