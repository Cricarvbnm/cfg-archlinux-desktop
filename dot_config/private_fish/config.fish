status is-login; and begin
  echo "Login $SHELL: Welcome $USER"
end


status is-interactive; and begin

  set --global fish_key_bindings fish_vi_key_bindings

  echo "Interactive $SHELL: Welcome $USER"
end
