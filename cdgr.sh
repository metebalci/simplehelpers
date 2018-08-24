# change current directory to the root of the current git repository
# useful if you are lost inside a git repo and want to go back to root
# does nothing if the current directory is not under a git repo

function cdgr {

    TOPLEVEL=`git rev-parse --show-toplevel`
    if [ $? -eq 0 ]
    then
      cd $TOPLEVEL
    fi

}
