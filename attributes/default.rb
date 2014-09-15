default['php-phalcon']['git_url'] = 'git://github.com/phalcon/cphalcon.git'
default['php-phalcon']['git_ref'] = 'master'

if platform_family?("rhel", "fedora")

    default['php-phalcon']['packages'] = %w[git php-devel pcre-devel gcc make]
    default['php-phalcon']['conf_dir'] = '/etc/php.d'
    default['php-phalcon']['conf_file'] = 'phalcon.ini'

elsif platform_family?("debian")

    default['php-phalcon']['packages'] = %w[git php5-dev libpcre3-dev gcc make php5-mysql]
    default['php-phalcon']['conf_dir'] = '/etc/php.d'
    default['php-phalcon']['conf_file'] = '30-phalcon.ini'

end
