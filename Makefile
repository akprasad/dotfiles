install-vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc
	mkdir -p ~/.vim/autoload ~/.vim/bundle
	curl -LSso ~/.vim/autoload/pathogen.vim \
		https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
	cd ~/.vim && git submodule init && git submodule update
