# list last 10 or <n> files updated
# very useful for folders like Downloads

function ll {

  if [ $# -eq 0 ]; then
    ls -c --color=always | head
  else
    ls -c --color=always $1 | head
  fi
    
}   

# move last <n> files updated in a source dir to a destination dir
# very useful for folders like Downloads
    
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
