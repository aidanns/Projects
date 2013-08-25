require_relative 'booking.rb'

# System to manage bookings for a hotel.
class BookingSystem

    # @param number_of_rows [FixNum]
    def initialize(number_of_rooms)
        @bookings = Hash.new
        1.upto(number_of_rooms) { |i|
            @bookings[i] = Hash.new
        }
    end

    # Return whether or not a room is booked on a particular date.
    # @param room_id [FixNum] Id of the room to check.
    # @param date [Date] Date to check.
    def room_booked?(room_id, date)
        if @bookings[room_id][date]
            return true
        else
            return false
        end
    end

    # Book a particular room.
    # @param room_id [FixNum] Id of the room to check.
    # @param date [Date] The date to book the room for.
    # @param name [String] The name of the person making the booking.
    def book_room(room_id, date, name)
        @bookings[room_id][date] = Booking.new(room_id, date, name)
    end

    # Check what rooms are free on a date.
    # @param date [Date] The date to check.
    def free_rooms(date)
        rooms = Array.new
        @bookings.each { |room_id, bookings|
            if (!bookings[date])
                rooms.push(room_id)
            end
        }
        return rooms
    end

end
