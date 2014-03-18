#
# Author:: Eric Ashman (<eric@ashman.com>)
# Cookbook Name:: yum
# Recipe:: remi



include_recipe "yum::epel"

major = node['platform_version'].to_i
remi  = node['yum']['remi_release']

remote_file "#{Chef::Config[:file_cache_path]}/remi-release-#{major}.rpm" do
  source "http://rpms.famillecollet.com/enterprise/remi-release-#{major}.rpm"
  not_if "rpm -qa | egrep -qx 'remi-release-#{major}.rpm'"
  notifies :install, "rpm_package[remi-release]", :immediately
end


rpm_package "remi-release" do
  source "#{Chef::Config[:file_cache_path]}/remi-release-#{major}.rpm"
  only_if {::File.exists?("#{Chef::Config[:file_cache_path]}/remi-release-#{major}.rpm")}
  action :nothing
end

file "remi-release-cleanup" do
  path "#{Chef::Config[:file_cache_path]}/remi-release-#{major}.rpm"
  action :delete
end