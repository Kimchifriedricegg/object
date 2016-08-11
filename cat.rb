class Cat

attr_accessor :name, :preferred_food, :meal_time, :meow

  def initialize(name,preferred_food,meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

#added instance method eats at
  def eats_at
  if @meal_time >= 13
    return "#{@meal_time - 12}pm"
  elsif @meal_time <= 11
    return "#{@meal_time}am"
  else
    return "#{@meal_time}pm"
  end
  end
  # added instance method called meow
  def meow
  puts "My name is #{name} and i eat #{preferred_food} at #{eats_at}"
  end
  end
# added two instances of class
cat1= Cat.new("Ahri", "apples", 14)
cat2= Cat.new("Yasuo", "teemo", 1)

# added two instances using eats at
cat1.eats_at
cat2.eats_at
#added cat telling you about itself
cat2.meow
cat1.meow
