require 'test/unit'

class TestGeneralHelpers < Test::Unit::TestCase
    def test_normalize
        filepath = File.expand_path(__FILE__)
        dirpath = File.dirname(filepath)
        Dir.chdir(dirpath)
        assert_equal Dir.pwd, dirpath
    end
end
