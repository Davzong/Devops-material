### [Atlassian Git Tutorials](https://www.atlassian.com/git/tutorials/setting-up-a-repository)
### [Visual git with remote](https://git-school.github.io/visualizing-git/#free-remote)
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

**Create a temp file of current file put away from working tree (Commit and recorded in git log)**

    git stach
**Put the temp file back to working**

    git apply
**Undo the changes**

    git revert 

**Git sttaus and history**

    git status
    git diff
    git log

## Commnads between the local files and global files

### Upload the modiflied files to remote repo


push to master branch

    git push origin master      


### Download the orginal remote repo to modify      

    git pull origin master      

### Create a branch

    git branch [branch-name]

### Switch to another branch 
    git checkout 

### Merge the branch

    git merge


### View all the branches
    git branch

### Delete branch (*Danger move!!!*)

    git branch -d [branch-name]

### Update local from remote
    
    git fetch
    git pull

### Download the whole repo and histoies from github
    git clone
 
