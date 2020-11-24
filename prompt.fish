set -l prompt_loc (pwd)/prompt.lua

function fish_prompt -V prompt_loc
	lua $prompt_loc (pwd) $HOME C
end
