status is-login; and begin

  # Source /etc/profile if it exists
  exec bash -c "test -e /etc/profile && source /etc/profile; exec fish"

end


status is-interactive; and begin

  # Vi keybindings
  set --global fish_key_bindings fish_vi_key_bindings

end
