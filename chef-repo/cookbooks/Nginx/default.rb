package 'nginx' do
  action :install
end

service 'nginx' do
  action [:enable, :start]
end

file '/var/www/misweb/html/index.html' do
  content '<h1>Servidor Nginx configurado por Sebastian con Chef</h1>'
  mode '0644'
  owner 'root'
  group 'root'
end
