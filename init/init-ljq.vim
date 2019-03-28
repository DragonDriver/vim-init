" .h, .hpp头文件保护，下面这句话不起作用
" autocmd BufNewFile *.h, *.hpp exec ":call SetHeaderGuard()"

func SetHeaderGuard()
	call setline(1, "#ifndef H_".toupper(expand("%:t:r"))."_H")
	call setline(2, "#define H_".toupper(expand("%:t:r"))."_H")
	call setline(3, "#endif //H _".toupper(expand("%:t:r"))."_H")
endfunc
