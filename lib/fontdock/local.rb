require "pango"

module Fontdock
  class Local
    class << self
      def font_map
        Pango::CairoFontMap.default
      end

      def families
        font_map.families
      end

      def names
        families.collect {|family| family.name }
      end
    end
  end
end
