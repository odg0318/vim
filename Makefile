plugin:
	@mkdir -p ~/.vim/autoload
	@curl -LSso ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

install: plugin
	@rm -rf ~/.vim*
	@cp .vimrc ~/.vimrc
	@cp -rp .vim ~/.vim
