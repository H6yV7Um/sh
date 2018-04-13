#/bin/bash
cd /Users/liwenhao/Desktop/github/blog

git add . && git commit -m "$1" && git push && echo "-----------git push success" || echo "----------git push fail"

hexo clean && hexo d -g && echo "-----------hexo push success" || echo "----------hexo push fail"
