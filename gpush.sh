#/bin/bash
git add . && git commit -m "$1" && git push && echo "-----------git push success" || echo "----------git push fail"
