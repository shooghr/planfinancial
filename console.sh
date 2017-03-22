#! /bin/bash
# 0: stdin, 1: stdout, 2:stderr

echo 'Setting console for initialize project....'
echo '..........................................'

rails db:drop RAILS_ENV=development 2> tmp/.error_console

if [ -s tmp/.error_console ]; then
  echo 'Could not delete the database and create '
  echo 'it again ................................'
  echo 'Start the Puma ..........................'
  rm -f tmp/.error_console
else
  rails db:create db:migrate utils:default_user RAILS_ENV=development
fi

foreman start
