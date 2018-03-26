
cd  /Users/macbookair/Documents/WORK/BLOGS/blog_haibao
hexo clean && hexo g 
cp ../hb.png ./public/
rsync -avhP --delete /Users/macbookair/Documents/WORK/BLOGS/blog_haibao/public/* uv1:/home/wwwroot/haibao.njuer.org
hexo s

