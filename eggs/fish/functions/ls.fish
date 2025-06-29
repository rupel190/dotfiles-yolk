function ls --wraps=eza --description 'alias ls eza -a --git --icons --group-directories-first'
    eza -a --git --icons --group-directories-first $argv

end
