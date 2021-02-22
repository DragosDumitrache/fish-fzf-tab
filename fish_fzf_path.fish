function fish_fzf_path
  fzf --preview (__fish_complete_path $argv[1])
end

complete -c cd -a '(fish_fzf_path)'
