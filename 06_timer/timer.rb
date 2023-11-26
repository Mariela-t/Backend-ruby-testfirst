class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    time = Time.at(seconds).utc #utc = Coordinated Universal Time 
    time.strftime('%H:%M:%S') #formats time
  end

end
