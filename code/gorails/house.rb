puts self  # main = top-level scope

class House 
    puts self # House - referring to the class itself (scope is the class)

    # class variable
    @@count = 0

    def self.count # Class Method
        @@count
    end

    def self.report_count_of_instance
        # count refers to self.count
        # name refers to self.name 
        "There are #{count} of instances of the #{name} class."
    end

    # shorthand getter and setter
    # attr_reader :color
    # attr_writer :color 

    attr_accessor :color, :style  # both getter and setter

    # constructor
    def initialize(color, style)
        puts self # referring to the instance of the class
        @color = color
        @style = style
        @@count += 1
    end

    # getter
    # def color 
    #     @color
    # end

    # setter
    # def color=(new_color)
    #     @color = new_color
    # end

    def details 
        "This house is a #{color} #{style} house instance."
    end
end

# p House.name   # House
# p House.class  # Class

p House.report_count_of_instance
house = House.new("blue", "craftsman")
puts house.details
p House.report_count_of_instance