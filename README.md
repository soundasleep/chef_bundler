chef_bundler
============

This is a simple cookbook that can install the `bundler` gem and then execute `bundle install` as necessary.

It's a simple way to install rubygems as defined in a `Gemfile`, without having to manually change the `cwd` and executing shell scripts directly - instead, you can use a simple DSL.

*NOTE* This is an experimental cookbook, pull requests and issues welcome.

### Using `chef_bundler`

To install the `bundler` gem, you can use `chef_bundler_bundler` resource:

```ruby
chef_bundler_bundler "default" do
  action :install
end
```

To install the gems defined in a `Gemfile` at a specific location, you can use the `chef_bundler_install` resource:

```ruby
chef_bundler_install "/var/www/myapp" do
  user "user"
  action :install
end
```

### Using `Cheffile`

For detailed usage instructions visit https://github.com/applicationsonline/librarian and follow the README.md.

```ruby
cookbook 'chef_bundler',
  :git => 'git://github.com/soundasleep/chef_bundler.git'
```

Update your `metadata.rb` to include `chef_bundler`, and then install bundler and gems from the `Gemfile` as necessary:

```ruby
include_recipe "chef_bundler::bundler"

chef_bundler_install node['myapp']['path'] do
  action :install
end
```

### Recipes

* default - this recipe does nothing
* bundler - this recipe installs the `bundler` gem to the system

Based on the [`chef-bundler` cookbook by Jordan Yaker](https://github.com/jordanyaker/chef-bundler).
