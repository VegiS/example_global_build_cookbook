#
# Cookbook:: build_cookbook
# Recipe:: functional
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe 'delivery-truck::functional'

# drop a .kitchen.yml derived from attributes set in .delivery/config.json

template "#{delivery_workspace_repo}/.kitchen.ec2.yml" do
  source '.kitchen.ec2.yml.erb'
end

#  For more and better information about using delivery_test_kitchen
#  refer to the README.md in https://github.com/chef-cookbooks/delivery-sugar

delivery_test_kitchen 'functional tests' do
  yaml '.kitchen.ec2.yml'
  driver 'ec2'
  repo_path delivery_workspace_repo
  action [:converge, :destroy]
end
