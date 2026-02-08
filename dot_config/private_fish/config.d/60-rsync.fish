status is-interactive; and begin
  abbr --add -- cpr 'rsync --archive -hhh --partial --info=stats1,progress2 --modify-window=1'
  abbr --add -- mvr 'rsync --archive -hhh --partial --info=stats1,progress2 --modify-window=1 --remove-source-files'
end
