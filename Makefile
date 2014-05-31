install-vim:
	sudo apt-get install curl vim
	rm -rf ~/.vim ~/.vimrc ~/.gvimrc ~/.gtkrc-2.0
	ln -s `pwd`/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc
	ln -s ~/.vim/gvimrc ~/.gvimrc
	ln -s ~/.vim/gtkrc-2.0 ~/.gtkrc-2.0
	mkdir -p ~/.vim/autoload ~/.vim/bundle
	curl -LSso ~/.vim/autoload/pathogen.vim \
		https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
	cd ~/.vim && git submodule init && git submodule update

install-git:
	sudo apt-get install git
	rm -rf ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig
