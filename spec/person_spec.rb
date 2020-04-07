require('minitest/autorun')
require('minitest/reporters')
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

require_relative('../person')

class PersonTest < MiniTest::Test
    def setup()
        @new_person = Person.new("Ben", 34)
    end

    # def test_drive_method()
    #     assert_equal("Brum Brum", @new_bus.drive())
    # end
end