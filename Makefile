bash-clean:
	rm -rf ~/.bashrc ~/.bash_aliases

bash-install:
	ln -s `pwd`/bash_aliases ~/.bash_aliases
	ln -s `pwd`/bashrc ~/.bashrc
	source ~/.bashrc

git-clean:
	rm -rf ~/.gitconfig

git-install:
	rm -rf ~/.gitconfig
	ln -s `pwd`/gitconfig ~/.gitconfig

vim-clean:
	rm -rf ~/.vim ~/.vimrc ~/.gvimrc ~/.gtkrc-2.0

vim-install:
	ln -s `pwd`/vimrc ~/.vimrc
	ln -s `pwd`/gvimrc ~/.gvimrc
	ln -s `pwd`/gtkrc-2.0 ~/.gtkrc-2.0
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall

clean:
	make bash-clean
	make git-clean
	make vim-clean

install:
	make bash-install
	make git-install
	make vim-install
