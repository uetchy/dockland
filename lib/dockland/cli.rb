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

    def method_missing(*args)
      command, *opt = args
      remote = Dockland.dokku_remote
      lines = `ssh -t #{remote[:username]}@#{remote[:host]} #{command.to_s} #{remote[:app_name]} #{opt.join(' ')} 2> /dev/null`
      puts lines.strip
    end

  end
end
