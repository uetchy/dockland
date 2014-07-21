require 'dockland/version'
require 'dockland/cli'

module Dockland

  private
  def self.parse_git_remote
    dokku_uri = `git config remote.dokku.url`.strip || `git config remote.deploy.url`.strip
    if dokku_uri.empty?
      puts "dokku url not given. please run > $ git remote add dokku dokku@<host>:<app_name>"
      exit
    end

    username, host, app_name = dokku_uri.scan(/\A(.+?)@(.+?):(.+?)\z/).first
    return { username: username, host: host, app_name: app_name }
  end

  def self.is_require_app_name?(command)
    remote = parse_git_remote
    line = `ssh -t #{remote[:username]}@#{remote[:host]} help 2> /dev/null | grep '    #{command}'`
    line.include?('<app>')
  end

  def self.dokku_exec(command, options='')
    remote = parse_git_remote
    `ssh -t #{remote[:username]}@#{remote[:host]} #{command} #{remote[:app_name] if is_require_app_name?(command)} #{options} 2> /dev/null`
  end

end
