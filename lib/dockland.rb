require 'dockland/version'
require 'dockland/cli'

module Dockland

  private
  def self.dokku_remote
    dokku_uri = `git config remote.dokku.url`.strip
    if dokku_uri.empty?
      puts "dokku url not given. please add dokku url to git remote"
      exit
    end

    username, host, app_name = dokku_uri.scan(/\A(.+?)@(.+?):(.+?)\z/).first
    return { username: username, host: host, app_name: app_name }
  end

end
