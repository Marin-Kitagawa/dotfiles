# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Custom aliases
alias cls='clear'
alias md='mkdir'
alias rmrf='rm -rf'

# Custom Functions
mcd() {
	if [[ ! -d $1 ]]; then
		md $1
	fi
	cd $1
}

alias podimg="podman images"
alias podnames="podimg | awk 'match(\$1, /\w+$/) {print substr(\$1, RSTART, RLENGTH)}'"
alias podtags="podimg | awk '{print \$2}'"

podgdock () {
    podman pull docker.io/$1
}

podgquay () {
    podman pull quay.io/$1/$2
}
