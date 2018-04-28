function fish_prompt --description 'Write out the prompt'
    set -l color_cwd
    set -l suffix
    
    switch "$USER"
        case root toor
            if set -q fish_color_cwd_root
                set color_cwd $fish_color_cwd_root
            else
                set color_cwd $fish_color_cwd
            end
            set suffix '#'
        case '*'
            set color_cwd $fish_color_cwd
            set suffix 'λ'
    end

    switch (prompt_pwd)
	case '~' 
	    set separ ''
	case '*'
	    set separ ':'
    end
    #echo -n -s (set_color -d $color_cwd) (prompt_pwd) (set_color 165118)"$separ"(set_color $color_cwd)"$suffix "(set_color normal)
    echo -n -s (set_color -d $color_cwd) (set_color --bold $color_cwd)"$suffix "(set_color normal)
end
