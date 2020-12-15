require 'pry'
def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(names)
    names.map{|name| badge_maker(name) }
end

def assign_rooms(names)
   greeting = []
    names.each_with_index do |name, i|
      greeting << "Hello, #{name}! You'll be assigned to room #{i+1}!"
    end
    greeting
end

def printer(names)
batch_badge_creator(names).each {|name| puts name}
assign_rooms(names).each {|name| puts name}
end