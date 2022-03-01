# Kountries

Ruby gem that makes it easier to work with countries.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kountries'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install kountries

## Usage

Usage;
```ruby
Kountries::LookupByCode.call(code: "KE") # get country by code
=> #<OpenStruct alpha2="KE", alpha3="KEN", country_code="254", name="Kenya", unofficial_names=["Kenya", "Kenia", "ケニア"]>

Kountries::LookupByName.call(name: "Vanuatu") # get country by name
=> #<OpenStruct alpha2="VU", alpha3="VUT", country_code="678", name="Vanuatu", unofficial_names=["Vanuatu", "バヌアツ"]>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Sylvance/kountries.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
