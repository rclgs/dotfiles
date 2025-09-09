# Git information in prompt
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git*+set-message:*' hooks git-remotebranch
function +vi-git-remotebranch() {
    local remote

    # Are we on a remote-tracking branch?
    remote=${$(git rev-parse --verify ${hook_com[branch]}@{upstream} \
        --symbolic-full-name 2>/dev/null)/refs\/remotes\/}

    # The first test will show a tracking branch whenever there is one. The
    # second test, however, will only show the remote branch's name if it
    # differs from the local one.
    if [[ -n ${remote} ]] ; then
    #if [[ -n ${remote} && ${remote#*/} != ${hook_com[branch]} ]] ; then
        hook_com[branch]="%F{yellow}[${hook_com[branch]}]%f %F{cyan}<${remote}>%f"
        return 0
    fi

    hook_com[branch]="%F{yellow}[${hook_com[branch]}]%f"
}

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
NEWLINE=$'\n'
PROMPT='%F{green}@%m%f: %F{blue}${PWD/#$HOME/~}%f ${vcs_info_msg_0_}${NEWLINE}$( [[ $EUID -eq 0 ]] && echo "#" || echo "%%" ) '
