def greetings
    greeting, *rest = ARGV
    rest.each do |arg|
         puts "#{greeting}, #{arg}!"
    end
end

greetings