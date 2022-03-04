#!/bin/bash
echo 'Give mysql user'
read user
echo 'Give mysql password'
read password
mysqldump  -d -h127.0.0.1 -u$user -p$password pa > stf_blank.sql 
git add *
git commit -a
git push https://github.com/nishishailesh/stf master

