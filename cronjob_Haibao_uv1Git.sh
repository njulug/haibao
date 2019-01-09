# 0 1-23/2 * * * /bin/bash /users/macbookair/CODE/Haibao/haibao/cronjob_Haibao.sh

rm /home/wwwroot/hbgit.njuer.org/.deploy_git/.git/index.lock

cd /Users/macbookair/CODE/Haibao/haibao
bash ./quick_downloadAndWriteMDUV.sh
#bash ~/abras.sh
bash ./makeWebAndPushGit.sh 
