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

      def find(part_of_name)
        find_from_pattern(/\A#{part_of_name}\z/)  ||
        find_from_pattern(/\A#{part_of_name}\z/i) ||
        find_from_pattern(/\A#{part_of_name}/)    ||
        find_from_pattern(/\A#{part_of_name}/i)   ||
        find_from_pattern(/#{part_of_name}/)      ||
        find_from_pattern(/#{part_of_name}/i)
      end

      private
      def find_from_pattern(pattern)
        names.find do |name|
          pattern =~ name
        end
      end
    end
  end
end
