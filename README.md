composer
=======

Overrides the following default calls to prepend `composer exec` if such package
is available within the context of composer.

Default calls
-------------

 * drush
 * drupal
 * phpunit
 * phpcs
 * phpcbf
 * psysh

You can add more bundled executables in your config.fish:

```fish
set composer_plugin_execs behat artisan
```

Usage
-----

```fish
$ drush -i
```

or

```fish
$ phpunit -v
```

License
=======

[MIT](http://opensource.org/licenses/MIT)

Based upon bpinto/plugin-bundler, which is © [bpinto](http://github.com/bpinto) et [al](https://github.com/bpinto/plugin-bundler/graphs/contributors)
