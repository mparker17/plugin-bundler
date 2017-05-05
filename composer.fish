function init --on-event init_composer
  set -l execs drush    \
               drupal   \
               phpunit  \
               phpcs    \
               phpcbf   \
               psysh

  if set -q composer_plugin_execs
    set execs $execs $composer_plugin_execs
  end

  # Fish 2.1.1+ has support for --inherit-variable
  set -l do_eval (echo $FISH_VERSION | grep 2.1.1-)

  for executable in $execs
    if test -z "$do_eval"
      eval "function $executable; __execute_as_composer $executable \$argv; end"
    else
      function $executable --inherit-variable executable
        __execute_as_composer $executable $argv
      end
    end
  end
end
