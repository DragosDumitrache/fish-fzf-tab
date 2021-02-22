function fzf_complete_kill
  fzf --preview () | awk '{print $2}' | echo
end

complete --exclusive -c kill -a '(fzf_complete_kill)'