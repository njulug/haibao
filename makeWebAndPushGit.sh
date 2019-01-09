
cd  /Users/macbookair/Documents/WORK/BLOGS/blog_haibao
#hexo clean 
/root/.nvm/versions/node/v9.5.0/bin/hexo g 
#cp ../hb.png ./public/
rsync -avhP ../hb.png ./public/
rsync -avhP ../CNAME ./public/

/root/.nvm/versions/node/v9.5.0/bin/hexo d

cd /home/wwwroot/blog_haibao_uv
/root/.nvm/versions/node/v9.5.0/bin/hexo g 
rsync -avhP --delete /home/wwwroot/blog_haibao_uv/public/* /home/wwwroot/haibao.njuer.org





#bash ~/CODE/Haibao/haibao/rSetMac2Se.sh
#rsync -avhP --delete /Users/macbookair/Documents/WORK/BLOGS/blog_haibao/public/* se:/home/wwwroot/haibao.njuer.org
#rsync -avhP --delete /Users/macbookair/Documents/WORK/BLOGS/blog_haibao/public/* uv1:/home/wwwroot/haibao.njuer.org
#ssh se "rsync -avhP --delete /home/wwwroot/haibao.njuer.org/* uv1:/home/wwwroot/haibao.njuer.org"
#hexo s

