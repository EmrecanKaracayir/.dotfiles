set fish_greeting ""

nvm install > /dev/null 2>&1

if status is-interactive 
  sleep 0.25
  starship init fish | source
end

