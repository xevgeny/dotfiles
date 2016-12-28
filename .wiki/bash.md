# Bash

## ssh tunnel via job
```
ssh -L 7070:ec2-52-209-9-195.eu-west-1.compute.amazonaws.com:7070 acc-sl1 -N &
kill %1
```

## kill pid with grep 
```
kill $(ps aux | grep '[s]olr' | awk '{print $2}')
```
*[s] is a trick to ignore grep itself*

## base64 encoding
openssl can do this trick for you
```
echo -n 'test' | openssl base64
```
