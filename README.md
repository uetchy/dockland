# Dockland

dokku pipeline

## Installation

```zsh
$ gem install dockland
```

## Usage

```zsh
$ cd dokku-ready-project
$ git config remote.dokku.url
dokku@example.com:dokku-ready-project
$ dockland config:add KEY1=VALUE
-----> Setting config vars and restarting dokku-ready-project
KEY1: VALUE
-----> Releasing dokku-ready-project ...
-----> Release complete!
-----> Deploying dokku-ready-project ...
-----> Deploy complete!
$ dockland config
=== dokku-ready-project config vars ===
KEY1: VALUE
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/dockland/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
