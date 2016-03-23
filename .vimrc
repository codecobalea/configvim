call pathogen#infect()
call pathogen#helptags()
set number
set sw=3
set ruler
set nocompatible
syntax on
map <F2> :NERDTreeToggle<cr>
set cursorline
" Atajos para pestañas como los de Firefox/Chrome/Opera/etc
" " Control T nueva pestaña (la cerramos con :q)
 map <c-t> <esc>:tabnew<cr>
"  
"  " Control PageUp/PageDown cambiar de pestaña
  map <c-pageup> :tabp<cr>
  map <c-pagedown> :tabn<cr>
"   
"   " F10 activa modo pegar (no autoindenta, no descoloca lo que pegamos), F11
"   " lo desactiva
   map <f10> :set paste<cr>
   map <f11> :set nopaste<cr>
"    
"    " Colores que no te dejan ciego (al gusto del consumidor, se puede
"    escribir
"    " :color e ir dando a tab para ver las combinaciones existentes, hay más
"    en
    " vim.org)
    colors desert
     
     " Que no haga la ventana de gvim demasiado pequeña
     au GUIEnter * set lines=80 columns=160
set autoindent
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                            "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.
