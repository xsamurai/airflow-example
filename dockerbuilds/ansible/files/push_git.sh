cd /root/example 
git config --global user.name 'test' 
git config --global user.email 'test@test.com' 
git add .
git commit -m "updated on `date +'%Y-%m-%d %H:%M:%S'`"
git push
