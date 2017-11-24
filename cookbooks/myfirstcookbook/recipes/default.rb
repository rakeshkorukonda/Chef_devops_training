#
# Cookbook:: myfirst_cookbook
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


directory '/tmp/apache2/dir1/dir2/dir3' do
  owner 'root'
  group 'root'
  mode '0754'
  recursive true
end


['/tmp/apache2','/tmp/apache2/dir1','/tmp/apache2/dir1/dir2','/tmp/apache2/dir1/dir2/dir3'].each do |path|
directory path do
  owner 'root'
  group 'root'
  mode '0754'
  recursive true
end
end

file '/tmp/apache2/file1.txt' do
  content 'hello world'
  mode '0755'
  owner 'root'
  group 'root'
end

=begin
carry  jre.rpm in files default folder
copy jre.rpm to opt folder
install jre.rpm
=end
cookbook_file '/opt/jre-8u151-linux-i586.rpm' do
  source 'jre-8u151-linux-i586.rpm'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

execute 'install jre rpm' do
  cwd '/opt'
  command 'rpm -ivh jre-8u151-linux-i586.rpm'
  user 'root'
end
