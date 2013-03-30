dotfiles
========
cd ~
cd dotfiles
ls -1a | xargs -I{} sh -c "ln -s ~/dotfiles/{} ~/{}"
