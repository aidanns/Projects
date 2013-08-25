# An individual booking for a room
class Booking

    # Id for the room that's being booked.
    # @return [FixNum]
    attr_accessor :room_id

    # Date the booking is for.
    # @return [Date]
    attr_accessor :date

    # Name the booking is for.
    # @return [String]
    attr_accessor :name

    # @param room_id [FixNum] The id of the room the booking is for.
    # @param date [FixNum] The date the booking is for.
    # @param name [String] The name the booking is for.
    def initialize(room_id, date, name)
        @room_id = room_id
        @date = date
        @name = name
    end

    
end

