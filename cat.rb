class Cat

attr_accessor :name, :preferred_food, :meal_time, :meow

  def initialize(name,preferred_food,meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end


# added two instances of class
cat1= Cat.new("Ahri", "apples", 14)
cat2= Cat.new("Yasuo", "teemo", 1)
