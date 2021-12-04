# **ejPT Cheatsheet**

## **Adding route to the network**
```console
root@kali~$ip a | grep tap0 | awk '/inet/ {print $2}'
root@kali~$ ip route add <ip/subnet> via <current ip gateway>
```
## **Checking for for alive host** 
```console
root@kali~$nmap -sn <ip/subnet> | grep "report for" | cut -d " " -f 5 > ip.txt
```
## **Scan all IP address**
```console
root@kali~$ports=$(nmap -p- --min-rate=1000 -T4 <ip> | grep ^[0-9] | cut -d ‘/’ -f 1 | tr ‘\n’ ‘,’ | sed s/,$//)
root@kali~$nmap -sV -sC -p$ports <ip> -oG <name of file>
```



