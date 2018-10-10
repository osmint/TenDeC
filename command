初始化，./git 隐藏文件
git init

git clone https://github.com/HF-Mint/Transform-based-Tensor-Model

origin 本地名
git remote add origin https://github.com/HF-Mint/Transform-based-Tensor-Model

git remote show origin

git remote remove origin

切换进目录才可以remove？

在本地仓库删除文件夹 
jcfei@jcfei ~/Desktop/git/Transform-based-Tensor-Model $ git rm -r mat-Py/

此处-r表示递归所有子目录，如果你要删除的，是空的文件夹，此处可以不用带上-r。


git commit -m"first time"
*** Please tell me who you are.

Run

  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"

to set your account's default identity.
Omit --global to set the identity only in this repository.


git config --global user.email "lyg_hjp@163.com"
git config --global user.name "HF-Mint"


git commit -m"first time" 

git push origin master

Username for 'https://github.com': HF-Mint
Password for 'https://HF-Mint@github.com': 
对象计数中: 2, 完成.
Delta compression using up to 8 threads.
压缩对象中: 100% (2/2), 完成.
写入对象中: 100% (2/2), 222 bytes | 0 bytes/s, 完成.
Total 2 (delta 1), reused 0 (delta 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/HF-Mint/Transform-based-Tensor-Model
   3516f74..eea7c3a  master -> master

$ git rm -h
用法：git rm [<选项>] [--] <文件>...

    -n, --dry-run         演习
    -q, --quiet           不列出删除的文件
    --cached              只从索引区删除
    -f, --force           忽略文件更新状态检查
    -r                    允许递归删除
    --ignore-unmatch      即使没有匹配，也以零状态退出


git remote -v
列出所有远程仓库信息, 包括网址.

git remote set-url origin git@github.com:username/newrepo.git
修改远程仓库对应的网址.

git remote rename hi hello
重命名本地远程仓库名, 从hi改为hello

如果出现错误failed to push som refs to…….，则执行以下语句，先把远程服务器github上面的文件拉先来，再push 上去。：

   $ git pull origin master


git add .
将所有文件添加到仓库







