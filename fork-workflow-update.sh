function update()
{
    # 此处可使用 git remote -v 查看远程分支列表
    git remote -v
    # fetch 源分支的新版本到本地
    git fetch upstream
    # 切换到本地master分支
    git checkout master
    # 合并两个版本的代码
    git merge upstream/master
    # 切换到本地develop分支
    git checkout develop
    # 合并两个版本的代码
    git merge upstream/develop
    # 删除远程分支
    git remote remove upstream
}

# 进入项目
cd /Users/liwenhao/Desktop/IDEAProject/cps
# 添加远程分支
git remote add upstream git@git.elenet.me:testinfra/cps.git

update

