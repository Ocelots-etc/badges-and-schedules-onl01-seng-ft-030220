
def badge_maker(name)
# hosting a conference and need to print badges for speakers
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
# takes names and returns badge messages
  attendees.collect do |name|
  badge_maker(name)
 end
end

def assign_rooms(attendees)
  room = 0
  attendees.collect do |name|
    room += 1
    "Hello, #{name}! You'll be assigned to room #{room}!"
  end
end

def printer(attendees)
  batch_badge_creator(attendees).each do |n|
    puts n
  end
  assign_rooms(attendees).each do |n|
    puts n
  end
end
