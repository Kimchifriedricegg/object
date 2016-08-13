class Rover

attr_accessor :x_coordinate, :y_coordinate, :direction, :location
  def initialize(x_coordinate, y_coordinate, direction)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction = direction
  end

  def location
    puts "#{@x_coordinate} #{@y_coordinate} #{@direction}"
  end


  def read_instruction(instructions)
    instructions.each do |act|
      instructions = gets.chomp
      if act == "M"
        move
      elsif act == "R"
        turn right
      elsif act == "L"
        turn left
      end
  end
end

  def move
    case @direction
    when "E"
      @x_coordinate +=1
    when "W"
      @x_coordinate -=1
    when "N"
      @y_coordinate +=1
    when "S"
      @y_coordinate -=1
    end
  end

    def turn_right
    case @direction
    when "N"
      @direction = "E"
    when "E"
      @direction = "S"
    when "S"
      @direction = "W"
    when "W"
      @direction = "N"
    end
  end

  def turn_left
    case @direction
    when "N"
      @direction = "W"
    when "W"
      @direction = "S"
    when "S"
      @direction = "E"
    when "E"
      @direction = "N"
    end
  end

end


#testing
teemo = Rover.new(1,1,"M")
teemo.location
