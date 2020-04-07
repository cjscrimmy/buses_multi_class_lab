require('minitest/autorun')
require('minitest/reporters')
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

require_relative('../bus')
require_relative('../person')

class BusTest < MiniTest::Test
    def setup()
        @new_bus = Bus.new(16, "Ocean Terminal")
        @new_person1 = Person.new("John", 82)
        @new_person2 = Person.new("Bill", 82)
        @new_person3 = Person.new("Jill", 82)
        # @passengers = [@new_person1, @new_person2]

    end

    def test_drive_method()
        assert_equal("Brum Brum", @new_bus.drive())
    end

    def test_passenger_count_is_zero()
        assert_equal(0, @new_bus.passenger_count())
    end

    def test_pick_up_passenger()
        @new_bus.pick_up_passenger(@new_person3)
        assert_equal(1, @new_bus.passenger_count())
    end
    
    def test_drop_off_passenger()
        @new_bus.drop_off_passenger(@new_person1)
        assert_equal(0, @new_bus.passenger_count())
    end

    def test_emptying_the_bus()
        @new_bus.pick_up_passenger(@new_person1)
        @new_bus.pick_up_passenger(@new_person2)
        @new_bus.pick_up_passenger(@new_person3)
        @new_bus.emptying_the_bus()
        assert_equal(0, @new_bus.passenger_count())
    end




end




def test_can_remove_pet_from_stock()
    @pet_shop.remove_pet(@pet1)
    assert_equal(1, @pet_shop.stock_count())
  end



=begin
Using TDD, your task is to model a Bus which can pick up and drop off passengers.

## Part A
### Step 1
- Create a Bus class. 
- The Bus should have a route number (e.g. 22) and a destination (e.g. "Ocean Terminal").
- The Bus should have a drive method that returns a string (e.g. "Brum brum").

### Step 2
- Create a Person class.
- The Person class should have attributes of a name and age.
=end