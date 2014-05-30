# Dockland

[![Gem Version](https://badge.fury.io/rb/dockland.svg)](http://badge.fury.io/rb/dockland)
[![Dependency Status](https://gemnasium.com/oame/dockland.svg)](https://gemnasium.com/oame/dockland)

Dockland provides `dokku` command for your machine.

## Installation

```bash
$ gem install dockland
```

## Usage

```bash
$ cd sushi-app # Move to dokku-ready-project folder
$ dockland config:add KEY1=VALUE
-----> Setting config vars and restarting sushi-app
KEY1: VALUE
-----> Releasing sushi-app ...
-----> Release complete!
-----> Deploying sushi-app ...
-----> Deploy complete!
$ dockland config
=== sushi-app config vars ===
KEY1: VALUE
```

## Contributing

1. Fork it ( https://github.com/oame/dockland/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
