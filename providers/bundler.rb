#
# Cookbook: chef_bundler
# chef_bundler_bundler
# Install the bundler gem
#

action :install do
  gem_package "bundler" do
    action :install
  end
end