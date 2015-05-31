include_recipe 'zip'

remote_file "#{Chef::Config[:file_cache_path]}/vault.zip" do
  source node['download']['url']
  checksum node['download']['checksum']
  notifies :run, 'bash[install vault]'
end

bash 'install vault' do
  user 'root'
  cwd Chef::Config[:file_cache_path]
  code "unzip -o vault.zip -d #{node['bin_path']}"
  action :nothing
end
