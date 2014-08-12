#
# Cookbook: chef_bundler
# chef_bundler_install
#

default_action :install

# Run a defined grunt task
actions :install

# Common attributes
attribute :dir, :kind_of => String, :name_attribute => true
attribute :user, :kind_of => String
