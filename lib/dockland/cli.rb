require 'thor'
require 'open3'

module Dockland
  class CLI < Thor

    desc 'info', 'Show info'
    def info
      remote = Dockland.dokku_remote
      puts remote
    end

    def method_missing(*args)
      remote = Dockland.dokku_remote
      lines = Open3.capture3(%|ssh -t #{remote[:username]}@#{remote[:host]} #{args.first.to_s} #{remote[:app_name]}|)
      lines.pop(2)
      lines = lines.map(&:strip).join("\n")

      puts lines
    end

  end
end
