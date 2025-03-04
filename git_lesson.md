**# если были изменения в файле, но не проиндексирован
git checkout index.html

# если был проиндексирован
git reset HEAD index.html

git reset HEAD~ # удаляем только коммит
git reset --hard HEAD~ # удаляем коммит и изменения

А вот отменить изменения сделанные в последнем коммите можно с помощью 
команды git revert. Она делает еще один коммит, но с противоположными изменениями.

git revert aa600a43cb164408e4ad87d216bc679d097f1a6c
# нужно передать ей хеш коммита, который мы отменяем

# Измените предыдущий коммит
git commit --amend -m "Add an author/email comment"

git pull --rebase

git diff --staged

# удаляет untracked files из репозитория
git clean -f -d

# удалить ветку test
git branch -D test 
