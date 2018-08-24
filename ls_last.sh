# list last 10 files update
# very useful for folders like Downloads

function ll {

  if [ $# -eq 0 ]; then
    ls -c --color=always | head
  else
    ls -c --color=always $1 | head
  fi

}
