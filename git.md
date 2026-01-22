посмотреть к какому удаленному репозиторию подключен git

git remote -v
git config --get remote.origin.url

git log --graph --all

git branch -d branch_name

git config --global core.editor "vim"

git config --list

-- подтянуть изменения с сервера и объединить их со своими
git pull --rebase origin master

git log --oneline --graph --all 
