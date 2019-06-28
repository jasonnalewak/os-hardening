name 'hardening' # ~FC078
maintainer 'Jason Nalewak'
maintainer_email 'jnalewak@chef.io'
license 'Proprietary - All Rights Reserved'
description 'Installs/Configures hardening'
long_description 'Installs/Configures hardening'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

supports 'amazon'
supports 'ubuntu', '>= 16.04'
supports 'debian', '>= 9.0'
supports 'centos', '>= 6.0'
supports 'redhat', '>= 6.0'
supports 'windows'

issues_url 'none'
source_url 'https://github.com/jasonnalewak/os-hardening.git'

depends 'os-hardening'
depends 'windows-hardening'
