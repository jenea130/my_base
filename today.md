pacman -Ss meld

Ctrl+K E - Focus on Open Editors View [vscode]

vscode
theme material

nvim
:undolist!

.aspect {
  background: url('img/img-1.jpg');
  max-width: 300px;
  aspect-ratio: 1;
}
aspect-ratio: 1 / 2;


paru -Syu # замена yay
paru -Ss ventoy-bin # загрузочные флешки

Пользовался раньше yay, но я часто переставлял систему, и было очень неудобно каждый 
раз ставить yay и ставить пакеты из aur после установки системы, задумался, 
нельзя ли сначала собирать из aur нормальные пакеты для pacman, сохранять их 
локально в локальном репозитории, и ставить их вместе с остальными пакетами с 
помощью pacman и pacstrap. В итоге нашел aurutils.

haruna # видеоплеер

timeshift # A system restore utility for Linux

stylelint # CSS linter

Prettier # for JS, CSS

stacer

LC_ALL=C pacman -Qi | awk '/^Name/{name=$3} /^Installed Size/{print $4$5, name}'
| sort -h
