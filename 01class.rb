=begin
string = String.new

Array.new
Hash.new


puts string.respond_to?("upcase")

puts string.respond_to?("reverse")

puts string.respond_to?("loweeer")
=end

class MyName #CamelCase
    def title #snake_case
        "Mr."
    end

    def first_name
        "Luis"
    end

    def middle_name        
    end

    def last_name
        "Vicente Díez"
    end

end

name = MyName.new

#puts name.methods.sort
puts name
puts name.title
puts name.first_name
puts name.middle_name
puts name.last_name