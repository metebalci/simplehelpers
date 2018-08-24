# lists the modified files installed with a package (through deb, apt etc.)
# useful if you want to keep their history like in a git repo

function list-modified-files-of-packages { 

  debsums -ce --ignore-permissions --ignore-obsolete
  
}
