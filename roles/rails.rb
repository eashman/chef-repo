name 'rails'
description 'This role configures a Rails stack using Unicorn'
run_list "role[base]", "recipe[yum::epel]", "recipe[yum::alema]", "recipe[build-essential]", "recipe[mysql::server]", "recipe[packages]", "recipe[bundler]", "recipe[bluepill]", "recipe[nginx]", "recipe[rails]", "recipe[rbenv]", "recipe[rails::databases]", "recipe[git]", "recipe[ssh_deploy_keys]", "recipe[postfix]"
default_attributes(
  "nginx" => { "server_tokens" => "off" },
  "rbenv" => {
    "group_users" => ['deploy']
  },
  "deploy_users" => [
        "deploy"
  ]
)