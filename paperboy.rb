class Paperboy

attr_reader :earnings
attr_accessor :quota, :deliver

  def initialize(name, experience, side, earnings)
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

  def deliver(start_address, end_address)
  houses= []
  if @side == "even"
    (1..22).find_all {|n| n % 2 == 0}
    return houses.length

  else
    (1..22).find_all {|n| n % 2 == !0}
    return houses_length
end
end
tommy = Paperboy.new("Tommy", "even")
tommy.deliver
