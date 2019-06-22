# Some warnings:
## First time add local repo to github:
1. Add your ssh key(`id_rsa.pub`) or GPG key to github.com 
    in your account setting:
    1. Create ssh-key: `ssh-keygen -C "youremail.com"`
    2. Copy `id_rsa.pub` and add that in your account setting
    3. Add private key to ssh: `ssh-add id_rsa` 
    4. You can use `ssh -T git@github.com` to check this binding.

2. `git remote add origin git@github.com:USERNAME/REPONAME.git` or use https:\
    `git remote add origin https://github.com:USERNAME/REPONAME.git`/
    Notice that oringin means remote repo

3. Push local repo to github:\
    `git push -u origin master`\
    `-u` parameter relate your local repo and the remote one, 
    you only need it the first time you do the push

4. NOTICE THAT if  you add the wrong remote repo to local,
    use `git remote rm origin` to undo that, 
    and you can add the right repo again.

## Always bear these in mind:
1. You must commit to change version lib to be the same as stage.

## Cheatsheet
1. `git reset HEAD versionid` Reset stage to a another version\
    `git reset --hard HEAD^` To previous version
2. `git branch` Show all branches\
    `git branch XXX` Create new branch XXX\
    `git checkout XXX` Switch to branch XXX\
    `git checkout -b XXX` Create branch XXX and switch to that\
    `git merge XXX` Merge branch XXX to current branch
    
