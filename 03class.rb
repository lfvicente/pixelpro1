class MyName #CamelCase
    # @variable de instancia, es una variable global
    def initialize(title, first_name, middle_name, last_name)
        @title = title
        @first_name = first_name 
        @middle_name = middle_name
        @last_name = last_name
    end

    def title #snake_case
        @title
    end

    def first_name
        @first_name
    end

    def middle_name
        @middle_name        
    end

    def last_name
        @last_name
    end
end

name = MyName.new("Mr.", "Luis", "", "Vicente Díez")

#puts name.methods.sort
puts name
puts "#{name.title}  #{name.first_name} #{name.middle_name} #{name.last_name} "