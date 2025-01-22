# HTB-Helper

What does this script do?
- initial scan
- basic service & web enumeration
- generate a note template

How to use it?

```sh
$ chmod +x htb-helper.sh
$ ./htb-helper.sh <ip>
```

Output looks like this:

```md
Target IP: 10.129.243.110

## Port Scanning
-> TCP Scan: 'nmap -sV 10.129.243.110'
PORT   STATE SERVICE VERSION
22/tcp open  ssh     OpenSSH 8.2p1 Ubuntu 4ubuntu0.1 (Ubuntu Linux; protocol 2.0)
80/tcp open  http    Apache httpd 2.4.41 ((Ubuntu))

-> UDP Scan (SNMP only): 'nmap -sU -sV -p 161 10.129.243.110'
PORT    STATE  SERVICE VERSION
161/udp closed snmp

-> Full port scan (y/n): n

-> Web Enum (y/n): y

## Web Enum
-> Port: 80
-> $ whatweb 10.129.243.110:80
http://10.129.243.110:80 [200 OK] Apache[2.4.41], Country[RESERVED][ZZ], HTTPServer[Ubuntu Linux][Apache/2.4.41 (Ubuntu)], IP[10.129.243.110]
-> Get Robots.txt
User-agent: *
Disallow: /admin/ 
```

What's next?
- gaining a foothold
- post-exploitation
- gaining persistence
- lateral movement
- post-exploitation