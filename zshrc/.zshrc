for file in  $HOME/.zshrc.d/*; do
        [ -r "$file" ] && source "$file"
done

