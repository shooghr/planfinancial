#! /bin/bash
# 0: stdin, 1: stdout, 2:stderr

echo 'Setting console for initialize project...'
echo '.........................................'

rails db:drop 2> tmp/.error_console

if [ -s tmp/.error_console ]; then
  echo 'Não pode excluir o banco, e recriá-lo '
  echo 'posteriomente.........................'
  echo 'Iniciaremos o Puma....................'
  rm -f tmp/.error_console
else
  rails db:create db:migrate utils:default_user
fi

foreman start
