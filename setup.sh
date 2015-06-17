# setup vimrc 

# instruction
echo "this setup script only run success on OSX. for other platform please check install ag search section for corect brew command."
echo "after install all module. run: ln -s ./.vimrc ~/.vimrc"
echo "(*) notice: sym link source path must relative from ~ folder."

# install pathogen.vim
if [ ! -f ~/.vim/autoload/pathogen.vim ]; then 
	mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	echo "[successfully installed] ~/.vim/autoload/pathogen.vim"
else
	echo "[already installed] ~/.vim/autoload/pathogen.vim"
fi

# install solarized.vim
if [ ! -d ~/.vim/bundle/vim-colors-solarized ]; then
	cd ~/.vim/bundle && git clone -q git://github.com/altercation/vim-colors-solarized.git
	echo "[successfully installed] ~/.vim/bundle/vim-colors-solarized"
else
	echo "[already installed] ~/.vim/bundle/vim-colors-solarized"
fi

# install nerdtree.vim
if [ ! -d ~/.vim/bundle/nerdtree ]; then
	cd ~/.vim/bundle && git clone -q https://github.com/scrooloose/nerdtree.git
	echo "[successfully installed] ~/.vim/bundle/nerdtree"
else
	echo "[already installed] ~/.vim/bundle/nerdtree.vim "
fi

# install gundo.vim
if [ ! -d ~/.vim/bundle/gundo.vim ]; then
	cd ~/.vim/bundle && git clone -q http://github.com/sjl/gundo.vim.git
	echo "[successfully installed] ~/.vim/bundle/gundo.vim"
else
	echo "[already installed] ~/.vim/bundle/gundo.vim "
fi

# install syntastic
if [ ! -d ~/.vim/bundle/syntastic ]; then
	cd ~/.vim/bundle && git clone -q https://github.com/scrooloose/syntastic.git
	echo "[successfully installed] ~/.vim/bundle/syntastic"
else
	echo "[already installed] ~/.vim/bundle/syntastic.vim "
fi

# install brew
if [ ! -x "$(command -v brew)" ]; then
	echo "[start install brew util command]"
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	echo "[successfully installed] brew command"
fi

# install native silver searcher
if [ ! -x "$(command -v ag)" ]; then
	echo "[start install silver searcher command]"
	brew install the_silver_searcher
	echo "[successfully installed] silver searcher command"
fi

# install vim silver searcher
if [ ! -d ~/.vim/bundle/ag.vim ]; then
	cd ~/.vim/bundle && git clone -q https://github.com/rking/ag.vim
	echo "[successfully installed] ~/.vim/bundle/ag.vim"
else
	echo "[already installed] ~/.vim/bundle/ag.vim "
fi

# install vim-airline
if [ ! -d ~/.vim/bundle/vim-airline ]; then
	cd ~/.vim/bundle && git clone -q git@github.com:bling/vim-airline.git
	echo "[successfully installed] ~/.vim/bundle/vim-airline.vim"
else
	echo "[already installed] ~/.vim/bundle/vim-airline.vim "
fi

# install fugitive.vim support git branch in airline
if [ ! -d ~/.vim/bundle/vim-fugitive ]; then
	cd ~/.vim/bundle && git clone -q git://github.com/tpope/vim-fugitive.git
	echo "[successfully installed] ~/.vim/bundle/vim-fugitive.vim"
else
	echo "[already installed] ~/.vim/bundle/vim-fugitive.vim "
fi

# install Powerline fonts support for airline
if [ ! -d /tmp/powerline_fonts ]; then
	cd /tmp/ && git clone -q git@github.com:powerline/fonts.git powerline_fonts
	cd powerline_fonts && sh install.sh 
	echo "[successfully installed] powerline fonts"
else
	echo "[already installed] ~/.vim/bundle/vim-fugitive.vim "
fi

# install ctrlp
if [ ! -d ~/.vim/bundle/ctrlp.vim ]; then
	cd ~/.vim/bundle && git clone -q https://github.com/kien/ctrlp.vim.git
	echo "[successfully installed] ~/.vim/bundle/ctrlp.vim"
else
	echo "[already installed] ~/.vim/bundle/ctrlp.vim"
fi
