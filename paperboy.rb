class Paperboy

attr_reader :earnings
attr_accessor :quota

  def initialize(name, experience, side, earnings,)
    @name = name
    @experience = experience
    @side = side
    @earnings = earnings
  end

# quota is half of experience added to minimum of 50
  def quota
   return "#{@experience * 0.5 + 50}"
 end
 end
