# 下载海报 生成md
url01="http://keysoftlab.nju.edu.cn/1576/list"
url02=".htm"
url11="http://keysoftlab.nju.edu.cn"


for i in `seq 1 1`
do
    url=$url01$i$url02
    #echo  $url
    a=`curl $url`
    j=`curl $url|grep "<span class='Article_Title'>"|grep "\/.*.htm" -o`
    k=`echo $a |grep "<span class='Article_Title'>"|grep "title='.*'" -o|awk -F "'" '{print $2}'`
    #echo $j
    #echo $k
    for j1 in $(echo $j)
    do    
        url1=$url11$j1
        #echo $url11$j1
        #echo $url1       
        title=`curl -s $url1 |grep read|grep -o "{.*}"|grep -E  "title.*\'" -o|sed "s/.jpg'}/ /g"|sed "s/.jpg'/ /g"|sed "s/title':'//g"|sed "s/海报模板-//g"|sed "s/海报模板//g"|sed "s/.JPG'//g"| sed "s/[ \t ]*$//g"|sed "s/ /_/g"|sed "s/（海报印制）//g"|sed "s/}//g"`
#        title=`curl -s $url1 |grep read|grep -E  "title.*\'" -o|sed "s/.jpg\'/ /g"|sed "s/title':'//g"|sed "s/海报模板-//g"|sed "s/海报模板//g"|sed "s/.JPG'//g"| sed "s/[ \t]*$//g"|sed "s/ /_/g"|sed "s/（海报印制）//g"`
        picurl=$url11`curl -s $url1 |grep read |grep "/_.*'}" -o|awk -F "\"" '{print $1"\t"$3 }'|awk -F "\t|\ |\'" '{print $1}'`

        echo "pic $picurl \t title $title"
        bash ./hexoNewPostUV $title $picurl
        echo "___________"
    done
done



