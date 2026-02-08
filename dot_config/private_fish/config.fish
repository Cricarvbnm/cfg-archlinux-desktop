function fish_greeting
  status is-login; and begin
    echo "Login $SHELL: Welcome $USER"
  end

  status is-interactive; and begin
    echo "Interactive $SHELL: Welcome $USER"
  end
end

status is-login; and begin
end

status is-interactive; and begin

  set --global fish_key_bindings fish_vi_key_bindings

end

for config in $XDG_CONFIG_HOME/fish/config.d/*.fish
  source $config
end
