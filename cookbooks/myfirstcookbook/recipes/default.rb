#
# Cookbook Name:: myfirstcookbook
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

puts node.default["name"]
puts node.default["password"]
puts node.default["organization"]

directory 'C:/Temp/mydirectory/abc/def/ghi' do
   recursive true
  #     action :create
end

file 'C:/Temp/mydirectory/abc/def/ghi/firstfile.txt' do
 content "new content for the file"
   #     action :create
end

cookbook_file "C:/Temp/mydirectory/abc/python-installer.exe" do
        source "python-installer.exe"
end

