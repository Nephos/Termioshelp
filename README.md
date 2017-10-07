# Termioshelp

TODO: Write a description here

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  Termioshelp:
    github: Nephos/Termioshelp
```

## Usage

```crystal
require "Termioshelp"

password = Termioshelp::Password.use(STDIN) do
  STDIN.gets
end
```

TODO: Write usage instructions here

## Development

TODO: Write development instructions here

## Contributing

1. Fork it ( https://github.com/Nephos/Termioshelp/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [Nephos](https://github.com/Nephos) Arthur Poulet - creator, maintainer
