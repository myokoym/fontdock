require "thor"
require "pango"
require "fontdock"

module Fontdock
  class Command < Thor
    desc "ls", "List available font families"
    def ls
      Fontdock::Local.names.sort.uniq.each {|name| puts name }
    end
  end
end
