@echo off

echo "Start find flags and other critical credentials"

SET list= credentials.txt password.txt flag.txt
(for %%a in (%list%) do ( 
   dir /s /b %%a 
))

PAUSE