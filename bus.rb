class Bus
    
    def initialize(route_number, destination)
        @route_number = route_number
        @destination = destination
        @passengers = []
    end

    def drive()
        return "Brum Brum"
    end

    def passenger_count()
        return @passengers.count()
    end

    def pick_up_passenger(passenger)
        @passengers << passenger
    end

    def drop_off_passenger(passenger)
        @passengers.delete(passenger)
    end

    def emptying_the_bus()
        @passengers.clear()
    end

end