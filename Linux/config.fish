# config.fish

# Custom aliases
alias cls='clear'
alias md='mkdir'
alias rmrf='rm -rf'

# Custom Functions
function mcd
    if ! test -d $argv
		md $argv
    end
	cd $argv
end

alias podimg="podman images"
alias podnames="podimg | awk 'match(\$1, /\w+$/) {print substr(\$1, RSTART, RLENGTH)}'"
alias podtags="podimg | awk '{print \$2}'"

function podgdock
    podman pull docker.io/$argv
}

function podgquay
    podman pull quay.io/$argv[0]/$argv[1]
end
