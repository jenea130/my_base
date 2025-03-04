ssh-keygen -t ed25519 -C "email@mail.com"
or
ssh-keygen -t rsa -b 4096 -C "email@mail.com"


eval "$(ssh-agent -s)"


ssh-add ~/.ssh/id_ed25519
or
ssh-add ~/.ssh/id_rsa


xclip -sel clip < ~/.ssh/id_rsa.pub
or
xclip -sel clip < ~/.ssh/id_ed25519.pub


Copies the contents of the id_rsa.pub file to your clipboard

