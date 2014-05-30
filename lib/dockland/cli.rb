require 'thor'

module Dockland
  class CLI < Thor

    desc 'info', 'Show info'
    def info
      remote = Dockland.dokku_remote
      puts "Remote : #{remote[:username]}@#{remote[:host]}:#{remote[:app_name]}"
      puts "Host   : #{remote[:host]}"
      puts "AppName: #{remote[:app_name]}"
    end

    def help
      puts Dockland.dokku_exec( 'help' )
    end

    def method_missing(*args)
      command, *opt = args

      lines = Dockland.dokku_exec( command.to_s, opt.join(' ') )
      puts lines
    end

  end
end
