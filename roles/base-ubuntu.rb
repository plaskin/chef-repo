# roles/base-ubuntu.rb
name "base-ubuntu"
description "Base role for Ubuntu Servers"
run_list "recipe[apt]"