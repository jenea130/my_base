npm i -g yarn
yarn 
yarn list
yarn global list
yarn list --depth 1

yarn global add @vue/cli

yarn add --dev parcel

yarn add package
yarn remove package

yarn outdated -- какие пакеты уже устарели

yarn cache clean -- очистка кеша

yarn upgrade

#с шаблоном 
yarn upgrade --pattern gulp
#с шаблоном и именем зависимости 
yarn upgrade left-pad --pattern "gulp|grunt"
#с тегом для указания нужной версии зависимости 
yarn upgrade --latest --pattern "gulp-(match|newer)"
#с областью видимости 
yarn upgrade --scope @angular
