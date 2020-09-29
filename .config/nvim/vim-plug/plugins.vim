" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


call plug#begin('~/.config/nvim/autoload/plugged')
        " NERDTree
        Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

        " Airline
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'

        " File Explorer with Icons
        Plug 'scrooloose/nerdtree'
        Plug 'Xuyuanp/nerdtree-git-plugin'
        Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
        Plug 'ryanoasis/vim-devicons'
        Plug 'airblade/vim-gitgutter'

        " Dracula theme
        Plug 'dracula/vim', { 'as': 'dracula' }

        " Fuzzy finder
        Plug 'ctrlpvim/ctrlp.vim'
        
        Plug 'scrooloose/nerdcommenter'


call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
