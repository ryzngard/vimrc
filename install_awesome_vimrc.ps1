rm ~/.vimrc
ls ~/.vim_runtime/vimrcs -filter *.vim | cat | Add-Content ~/.vimrc

if (test-path ~/.vim_runtime/my_configs.vim)
{
    cat ~/.vim_runtime/my_configs.vim | add-content ~/.vimrc
}
