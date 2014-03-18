#
# Author:: Eric Ashman (<eric@ashman.com>)
# Cookbook Name:: yum
# Recipe:: alematech


yum_repository "alematech" do
  repo_name "alematech"
  description "AlemaTech repo"
  url "http://chef.alematech.com:8080/repo/centos/6/$basearch/"
  action :add
end

yum_package "ruby" do
  action :install
  flush_cache [:before]
end
