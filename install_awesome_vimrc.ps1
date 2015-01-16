$basic = cat ~/.vim_runtime/vimrcs/basic.vim
$filetypes = cat ~/.vim_runtime/vimrcs/filetypes.vim
$plugins_config = cat ~/.vim_runtime/vimrcs/plugins_config.vim
$extended = cat ~/.vim_runtime/vimrcs/extended.vim
$my_configs = ""

if (test-path ~/.vim_runtime/my_configs.vim)
{
    $my_configs = cat ~/.vim_runtime/my_configs.vim
}

$output = $basic + "`r" + $filetypes + "`r" + $plugins_config + "`r" + $extended + "`r" +  $my_configs 
$output | out-file ~/.vimrc
