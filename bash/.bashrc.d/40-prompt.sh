# ==========================
# Prompt Customization
# ==========================
PS1='\u@\h:\w\$ '  # User@Host:CurrentDirectory$

# Prompt Updates
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\w\[\033[00m\]\n\$ '
export PROMPT_DIRTRIM=3


# Git customizations
## Prerequisite:
##   - clone https://github.com/git/git.git to $HOME/.local/opt
##   - checkout to tag with same Git version
if [[ -s $HOME/.local/opt/git/contrib/completion/git-prompt.sh ]]; then
    source $HOME/.local/opt/git/contrib/completion/git-prompt.sh
    ## Customize PS1 to include Git information
    export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 " (%s)")\n\$ '
    export GIT_PS1_SHOWDIRTYSTATE=1
fi