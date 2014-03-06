# roles/base-ubuntu.rb
name "base-ubuntu"
description "Base role for Ubuntu Servers"
run_list "recipe[apt::default]","recipe[chef-client::cron]"
# could have specified recipe[apt]. This would grab the default recipe. 