# Radio
alias jblive="mpv http://jblive.fm"
alias jbliveV="mpv rtsp://jblive.videocdn.scaleengine.net/jb-live/play/jblive.stream"
alias wmmr="mpv -playlist http://provisioning.streamtheworld.com/pls/WMMRFMAAC.pls"

# Other
alias getIP="curl -s icanhazip.com"
alias ta="tmux attach-session -t $1"
alias tn="tmux new-session -s $1"

# Manual Upgrades
alias pacman-updates="pacman -Qqu | wc -l"
alias aur-updates="cower -u | wc -l"

# Solus

# Ruby Path Env
#set -gx PATH ~/.gem/ruby/2.3.0/bin $PATH
#set -gx PATH "(ruby -e 'print Gem.user_dir')/bin:$PATH"
