#!/bin/bash

dotfiles_dir="$(pwd)"

ignored_list=("." ".." ".git" ".gitignore")

for file in .*; do
    create_symlink=true
    for ignored in "${ignored_list[@]}"; do
        if [ "$file" == "$ignored" ]; then
            create_symlink=false
            break
        fi
    done

    if [ "$create_symlink" = true ]; then
        echo "Creating symlink for $file"
        ln -s "$dotfiles_dir/$file" "$HOME/$file"
    fi
done

echo ""
echo "------------------------------------------------------------"
echo "Setup complete!"
