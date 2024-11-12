## Installation

Add this line to your application's Gemfile:

```ruby
gem 'csv_builder'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install csv_builder
```

In app/views/categories/index.csv.cb:

```ruby
@filename = 'all_catgories.csv'

csv << ['ID', 'Name', 'Create At', 'Updated At']

@categories.find_each do |category|
  csv << [
    category.id,
    category.name,
    category.created_at,
    category.updated_at
  ]
end
```

Output:

```csv
ID;Name,Created At,Updated At
1;Travel;2024-01-01 00:00:00 UTC;2024-01-01 00:00:00 UTC
2;Computers;2024-01-01 00:00:00 UTC;2024-01-01 00:00:00 UTC
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/uxxman/csv_builder. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Csb project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/uxxman/csv_builder/blob/main/CODE_OF_CONDUCT.md).