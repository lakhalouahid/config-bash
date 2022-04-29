function rt {
  args=$@
  tmux send-keys -t top "$args" C-m
}
function rr {
  args=$@
  tmux send-keys -t right "$args" C-m
}
function rl {
  args=$@
  tmux send-keys -t left "$args" C-m
}


function scf {
  cat ~/.sfiles | fzf | xargs -r $EDITOR
}

function sd {
  case $1 in
    'p')
      echo "$HOME/pdf" | xargs -l bash -c 'find -L $0 -type f -name "*.pdf"' | fzf
      ;;
  esac
}

function pdf {
  /usr/bin/zathura $@ &>/dev/null &
}

function search {
  /usr/bin/find -L $@ | /usr/bin/fzf
}


function qutebrowser() {
  /usr/bin/qutebrowser -l critical $@ &>/dev/null &
}


function expand() {
  alias | grep $@ | sed -E "s/alias [^']+'([^']+)'/\1/"
}

function opdf {
  /usr/bin/zathura $(search $@) &>/dev/null
}
