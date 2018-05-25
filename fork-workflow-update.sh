function update()
{
    # 进入项目
    cd $1
    # 添加远程分支
    git remote add upstream $2
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
dir=(
    /Users/liwenhao/Desktop/IDEAProject/cps
)
upstream=(
    git@git.elenet.me:testinfra/cps.git
)

i=0
while [ $i -lt ${#dir[*]} ]
do
    # 更新代码
    update ${dir[$i]} ${upstream[$i]}
    # i++
    i=`expr $i + 1`
done



