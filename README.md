# Administrate::Field::SelectEssential

A plugin for [Administrate](https://github.com/thoughtbot/administrate)

## Usage

Add to your `Gemfile`:

```ruby
gem 'administrate-field-select_essential'
```

Run:

```bash
$ bundle install
```

Add to your `FooDashboard`:
```ruby
ATTRIBUTE_TYPES = [
  bars: Field::SelectEssential.with_options(
    choices: %w[One Two Three],
    include_blank: 'Choose An Option',
    multiple: true,
  ),
]
```

