### [Atlassian Git Tutorials](https://www.atlassian.com/git/tutorials/setting-up-a-repository)
## Commnads on the local files

**Inititate the git folder**
```test 
git init
```

**Put the file staged**
```test
git add
```

**Add all modified files**
```test
git add .
```

**Submit the modifiled to local**
```test
git commit -m ""
```

**Check the git status**

```test
git status
```

**Remove unstracked files from the working free**

    git clean

**Stach the changes in a dirty working directory away**

    git stach

**Undo the changes**


## Commnads between the local files and global files

将更改推送到远程仓库: 


推送到 master 分支
git push origin master      


### Download the orginal remote repo to modify      

    git pull origin master      

10. 创建分支:

git branch [branch-name]

11. 切换到其他分支:

git checkout [branch-name]

12. 合并分支:

git merge [branch-name]

13. 删除分支:

git branch -d [branch-name]

14. 查看所有分支:

git branch