default['bin_path'] = '/usr/local/bin'

default['download']['architecture'] = 'amd64'
default['download']['checksum'] = 'd607005f544c'
default['download']['os'] = 'linux'
default['download']['version'] = '0.1.2'

default['download']['url'] = \
  'https://dl.bintray.com/mitchellh/vault/' \
  "vault_#{version}_#{os}_#{architecture}.zip"
