class Timer
  def initialize
  	@seconds = 0;
  end

  attr_reader :seconds, :minutes, :hours;

  def seconds=(value)
  	self.minutes = value / 60;
  	@seconds = value % 60;
  end

  def minutes=(value)
  	self.hours = value / 60;
  	@minutes =  value % 60;
  end

  def hours=(value)
  	@hours = value;
  end

  def time_string
  	time = "";
  	time = pad(@hours.to_s) + ":" + pad(@minutes.to_s) + ":" + pad(@seconds.to_s)

  	time
  end

  def pad numberString
  	if numberString.length == 0
  		numberString = "00"
  	elsif numberString.length == 1
  		numberString = "0" + numberString
  	end
  	numberString  	
  end

end
