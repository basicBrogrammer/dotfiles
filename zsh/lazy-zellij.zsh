zel() {
  local sessions=$(zellij ls)
  local selected=$(echo -e "[NEW] session\n$sessions" | fzf --height 40% --reverse)

  if [[ "$selected" == "[NEW] session" ]]; then
    echo -n "Enter new session name: " >&2
    read new_session
    printf "%s" "$new_session"
    zellij attach --create "$new_session"
  else
    local session_name=$(echo "$selected" | sed 's/ \[.*//')
    printf "%s" "$session_name"
    zellij attach "$session_name"
  fi
}
