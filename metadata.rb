# rubocop:disable Style/SingleSpaceBeforeFirstArg
name             'ice'
maintainer       'Medidata Solutions'
maintainer_email 'cookbooks@mdsol.com'
license          'Apache 2.0'
description      'Installs/Configures ice'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.14'
# rubocop:enable Style/SingleSpaceBeforeFirstArg

%w( ubuntu centos ).each do |os|
  supports os
end

# Cookbook dependencies
%w( java apt nginx openssl logrotate chef-sugar ).each do |cb|
  depends cb
end

depends 'artifact', '>= 1.9.0'
depends 'tomcat', '>= 0.14.0'
