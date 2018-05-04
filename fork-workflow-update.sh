git remote add upstream git@github.com:geeeeeeeeek/git-recipes.git
此处可使用 git remote -v 查看远程分支列表

$ git remote -v
origin	git@github.com:morethink/git-recipes.git (fetch)
origin	git@github.com:morethink/git-recipes.git (push)
upstream	git@github.com:geeeeeeeeek/git-recipes.git (fetch)
upstream	git@github.com:geeeeeeeeek/git-recipes.git (push)
fetch 源分支的新版本到本地
$ git fetch upstream

切换到本地master分支
$ git checkout master
合并两个版本的代码
$ git merge upstream/master
将合并后的代码 push 到 GitHub 上去
$ git push origin master
