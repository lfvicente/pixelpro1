# Ctrl + ç comenta el código

class MyName #CamelCase
    # Getter en ruby
    attr_accessor :title, :first_name, :middle_name, :last_name #getter + setters

    # @variable de instancia, es una variable global
    def initialize(title, first_name, middle_name, last_name)
        @title = title
        @first_name = first_name 
        @middle_name = middle_name
        @last_name = last_name
    end

    def full_name
        @first_name + " " +
        @middle_name + " " +
        @last_name 
    end

    
    def full_name_title
        @title + " " + full_name
    end
end

name = MyName.new("Mr.", "Luis", "", "Vicente Díez")

name.title="Dr."

puts name.full_name
puts name.full_name_title


