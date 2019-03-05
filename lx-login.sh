# lx-login is helper to login a lxc container as ubuntu
# below is also bash completion for container name

function completion-lx-login {
  readarray -t ABC < <(lxc list --format csv -c n)
  for x in "${ABC[@]}"
  do
    if [[ $x == $2 ]] || [[ $x == $2* ]]
    then
      COMPREPLY+=( $x )
    fi
  done
}

function lx-login { lxc exec $1 -- su - ubuntu; }

complete -F completion-lx-login lx-login
