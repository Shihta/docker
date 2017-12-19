alias ll='ls -lF'
alias la='ls -A'

function tree(){
    docker run -ti --rm -v $PWD:/work -w /work shihta/coreos-tools tree -C $@
}

export -f tree
