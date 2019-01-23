# list last 10 files modified under current dir or a dir specified
# very useful for folders like Downloads
# usage: ll or ll ~/Downloads

function ll {

  if [ $# -eq 0 ]; then
    ls -c --color=always | head
  else
    ls -c --color=always $1 | head
  fi
    
}   

# move last <n> files modified in a source dir to a destination dir
# very useful for folders like Downloads
# usage: mvll 3 ~/Downloads .
    
function mvll {
    
  if [ $# -ne 3 ]; then
    echo "mvll <num_files> <source_dir> <target_dir>"
  else
    n=$1
    srcdir=$2
    dstdir=$3
    (IFS='
    '
    for filename in $(ls -c $srcdir | head -n $n); do
      filepath=$(readlink -m "$srcdir/$filename")
      echo $filepath
      mv $filepath $dstdir
    done)
  fi

}
