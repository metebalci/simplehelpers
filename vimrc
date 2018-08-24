
# create no backup and swap but use persistent undo
set nobackup
set nowb
set noswapfile
if has('persistent_undo')
  set undodir=$HOME/.VIM_UNDO_FILES
  :silent call system('mkdir -p ' . &undodir)
  set undolevels=5000
  set undofile
endif
