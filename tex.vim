setlocal textwidth=80
" setlocal formatoptions+=a
setlocal wrap linebreak nolist

map <F4> :! pdflatex %<CR><CR> \| :! xdg-open $(echo % \| sed 's/tex$/pdf/') & disown && latexmk -c<CR><CR>
