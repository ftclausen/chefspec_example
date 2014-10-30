package 'example'

# Our LWRP
chefspec_example 'widget1' do
  action [ :doit ]
end

template '/etc/example.conf' do
  source 'example.conf.erb'
  owner 'example'
  group 'example'
  mode '0755'
end

cookbook_file '/var/lib/example.dat' do
  source 'example.dat'
  owner 'example'
  group 'example'
  mode '0755'
end

# And a service
service 'example' do
  action [:enable, :restart]
end
