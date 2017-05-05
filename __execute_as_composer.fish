function __execute_as_composer
  if __is_a_composed_executable $argv[1]
    command composer exec $argv
  else
    eval command $argv
  end
end
