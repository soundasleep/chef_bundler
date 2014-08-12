#
# Cookbook: chef_bundler
# chef_bundler_bundler
# Installs gems from a Gemfile
#

action :install do
  # Import
  dir = @new_resource.dir
  user = @new_resource.user

  command = "bundle install"

  # Execute
  execute command do
    cwd dir
    user user if user
  end
end
