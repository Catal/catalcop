# Catalcop

Catalcop provides recommended RuboCop configuration for use on Catal Ruby projects.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'catalcop', github: 'catal/catalcop'
```

And then execute:

    $ bundle install

## Usage

##### Gemfile

```Gemfile
group :development do
  gem "rubocop"
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
end
```

##### .rubocop.yml

```yml
inherit_gem:
  catalcop: config/rubocop.yml
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
