# require 'csv'

arrival = []
departure = []
puts("q to quit, a to log arrival, d to log departure")


q = 0
while q == 0
  case gets.chomp
  when "a"
    arrival << Time.now
    puts "arrival: #{arrival.last.min}:#{arrival.last.sec}"
  when "d"
    departure << Time.now
    puts "departure: #{departure.last}"
  when "q"
    puts "arrival: ", arrival, "departure: ", departure
    q = 1
  else
    puts "don't"
  end
end
puts "arrival"
puts arrival
puts "departure"
puts departure
puts "delay"
i = 0
delay = 0
while i < departure.length || i< arrival.length do 
  delay += departure[i] - arrival[i]
  i += 1
end
puts delay
puts i
puts "average delay"
puts delay/i

# CSV.open("../queue.csv", "wb") do |csv|
#   # csv << ["TEST"]
#   # csv << data.to_a
#   # data.each{ |x|
#   #   csv << x["Name"]
#   #   csv << ["arrivals"]
#   #   csv << x["arrivals"]
#   #   csv << ["departures"]
#   #   csv << x["departures"]
#   # }
#   csv << ["hour", "minute", "second"]
#   csv << ["arrivals"]
#   arrival.each { |x|
#     csv << [x.hour, x.min, x.sec]
#   }
#   csv << ["departures"]
#   departure.each { |x|
#     csv << [x.hour, x.min, x.sec]
#   }
# end
