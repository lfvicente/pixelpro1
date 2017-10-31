# Ctrl + ç comenta el código

class MyName #CamelCase
    # Getter en ruby
    attr_reader :title, :first_name, :middle_name, :last_name #getters
    attr_writer :title #, :first_name, :middle_name, :last_name #setters
    #attr_accessor :title, :first_name, :middle_name, :last_name #getter + setters

    # @variable de instancia, es una variable global
    def initialize(title, first_name, middle_name, last_name)
        @title = title
        @first_name = first_name 
        @middle_name = middle_name
        @last_name = last_name
    end

    # def title=(new_title)
    #     @title = new_title
    # end

end

name = MyName.new("Mr.", "Luis", "", "Vicente Díez")

#puts name.methods.sort
puts name
puts "#{name.title}  #{name.first_name} #{name.middle_name} #{name.last_name} "
name.title="Dr."
# name.first_name="Luisete"
puts "#{name.title}  #{name.first_name} #{name.middle_name} #{name.last_name} "