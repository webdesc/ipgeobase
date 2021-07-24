![CI](https://github.com/webdesc/ipgeobase/actions/workflows/main.yml/badge.svg)

# Ipgeobase

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/ipgeobase`. To experiment with that code, run `bin/console` for an interactive prompt.

Ipgeobase returns metadata by IP

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ipgeobase'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install ipgeobase

## Usage

    ip_meta = Ipgeobase.lookup('8.8.8.8')
    ip_meta.city # Ashburn
    ip_meta.country # United States
    ip_meta.countryCode # US
    ip.lat # 39.03
    ip.lon # -77.5

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/ipgeobase.
