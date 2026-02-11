# ~/.bashrc

# ==========================
# Source configuration files
# ==========================
for file in "$HOME/.bashrc.d/"*.sh; do
    [ -r "$file" ] && . "$file"
done

# ==========================
# Customization for interactive shells
# ==========================
if [ -n "$PS1" ]; then
    # Enable color support for ls and grep
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

