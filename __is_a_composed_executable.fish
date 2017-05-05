function __is_a_composed_executable
  if type -q composer
    set -l bindir (command composer config bin-dir)
    test -f "$bindir/$argv"
  else
    return 1
  end
end
