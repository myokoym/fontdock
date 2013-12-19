require "thor"
require "pango"

module Fontdock
  class Command < Thor
    desc "ls", "List available font families"
    def ls
      ENV["LANG"] = "C"
      families = Pango::CairoFontMap.default.families
      names = families.collect {|family| family.name }
      names.sort.uniq.each {|name| puts name }
    end
  end
end
