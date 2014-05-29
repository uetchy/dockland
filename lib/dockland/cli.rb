require 'thor'

module Dockland
  class CLI < Thor

    desc 'info', 'Show info'
    def info
      remote = Dockland.dokku_remote
      puts remote
    end

    def method_missing(*args)
      remote = Dockland.dokku_remote
      lines = `ssh -t #{remote[:username]}@#{remote[:host]} #{args.first.to_s} #{remote[:app_name]}`.strip

      puts lines
    end

  end
end
