require "stringio"
require "fontdock/command"

class CommandTest < Test::Unit::TestCase
  def setup
    @command = Fontdock::Command.new
  end

  def test_ls
    s = ""
    io = StringIO.new(s)
    $stdout = io
    @command.ls
    assert_match(/Gothic/, s)
    $stdout = STDOUT
  end
end
