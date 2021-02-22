function branch
  git branch --all | string replace '*' '' | string trim | fzf
end

function change-branch --wraps "git checkout"
  git checkout $argv[1]
end

complete -f --exclusive -c change-branch -a '(branch)'
