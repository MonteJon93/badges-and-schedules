def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(names)
    names.map {|name| badge_maker(name)}
end

def assign_rooms(names)
names.map.with_index(0) {|name, i| 
    "Hello, #{name}! You'll be assigned to room #{i+1}!"}
end

def printer(names)
    batch_badge_creator(names).map do |badge|
         puts badge
    end
   
    assign_rooms(names).map do |message|
        puts message
    end

end 