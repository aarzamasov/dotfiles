dotfiles
========
cd ~

cd dotfiles

ls -1a | grep README -v | xargs -I{} sh -c "ln -s ~/dotfiles/{} ~/{}"

cd ~

