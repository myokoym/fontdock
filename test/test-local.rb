require "fontdock/local"

class LocalTest < Test::Unit::TestCase
  class FindTest < self
    def test_found
      assert_not_nil(Fontdock::Local.find("M"))
    end

    def test_not_found
      assert_nil(Fontdock::Local.find("ABCDE12345"))
    end
  end
end
