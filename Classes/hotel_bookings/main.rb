require 'date'

require_relative 'booking_system.rb'

system = BookingSystem.new(10)
date = Date.new(2013, 8, 26)

print "Rooms free on " + date.to_s + ": " + system.free_rooms(date).to_s + "\n"
print "Booking rooms 1, 3 and 5 on " + date.to_s + "\n"
system.book_room(1, date, "Aidan Nagorcka-Smith")
system.book_room(3, date, "Jenny Gao")
system.book_room(5, date, "Luke Skywalker")
print "Rooms free on " + date.to_s + ": " + system.free_rooms(date).to_s + "\n"
print "Room 1 booked on " + date.to_s + ": " + system.room_booked?(1, date).to_s + "\n"
