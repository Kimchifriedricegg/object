class Paperboy

  attr_reader :earnings
  attr_accessor :experience, :side, :name

  def initialize(name, side)
    @name = name
    @experience = 0
    @side = side
    @earnings = 0
  end

# quota is half of experience added to minimum of 50
  def quota
    @quota = 50 + @experience/2
      return @quota
  end

  def deliver(start_address, end_address)
      earn = 0
      xtra = 0
      exp  = 0


        if @side == "even"
      houses = (start_address..end_address).find_all {|n| n % 2 == 0}
      exp = houses.length
          if exp == @quota
            earn = @quota * 0.25
          elsif exp > @quota
            earn = @quota * 0.25
            xtra = (exp - @quota) * 0.50
          else
            earn = (exp * 0.25) - 2
          end
        else
          houses = (start_address..end_address).find_all {|n| n % 2 != 0}
        exp = houses.length
          if exp == @quota
            earn = @quota * 0.25
          elsif exp > @quota
            earn = @quota * 0.25
            xtra = (exp - @quota) * 0.50
          else
            earn = (exp * 0.25) - 2
              end
            end
              @earnings += earn + xtra
              @experience += exp
      end

    def report
      puts "Im #{@name}, ive delivered #{@experience} and ive earned #{@earnings}"
    end
end

tommy = Paperboy.new("Tommy", "even")
tommy.quota
tommy.deliver(200,200)
tommy.report
