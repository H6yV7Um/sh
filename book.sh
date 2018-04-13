#! /bin/bash
cd /Users/liwenhao/Desktop/github/programming

if [ ! -n "$1" ]; then
   message=$(date +%Y-%m-%d)
   echo "you don't ipnut git commit message,so the message is $message"
 else
   message="$1"
fi
book sm -i node_modules,_book
gitbook build && git add . && git commit -m "$message" && git push -f origin master && echo "gitbook push success-----------" || echo "gitbook push fail----------"
