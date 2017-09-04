# vim折叠代码

## python

1. python以缩进进行折叠，在`.vimrc`添加
    set foldmethod=indent

2. 必须手动输入za来折叠（和取消折叠），空格可展开当前折叠

3. 使得空格亦可以折叠，在`.vimrc`中添加
    nnoremap <space> za
