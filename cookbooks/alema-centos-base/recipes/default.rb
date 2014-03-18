#
# Cookbook Name:: alema-bash-profile
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template '/etc/profile.d/bash-common.sh' do
   source 'bash-common.sh'
end


#template '/etc/yum.repos.d/CentOS-Base.repo' do
#	source 'CentOS-Base.repo'
#end
