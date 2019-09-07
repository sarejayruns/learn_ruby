class Timer
  attr_accessor :seconds
  attr_accessor :time_string
  def seconds 
    @seconds = 0 #initialize an to 0
  end
  def time_string
    if @seconds >= 3600
      hours = @seconds / 3600
      if hours < 10
        hours = '0' + hours.to_s
      end
      @seconds = @seconds % 3600
    elsif @seconds < 3600
      hours = '00'
    end
    if @seconds >= 60 && @seconds < 3600
      mins = @seconds / 60
      if mins < 10
        mins = '0' + mins.to_s
      end
      @seconds = @seconds % 60
    elsif @seconds < 60
      mins = '00'
    end
    if @seconds >= 10 && @seconds < 60
      @seconds = @seconds
    elsif @seconds < 10
        @seconds = '0' + @seconds.to_s
    end
    if @seconds == 0
      @seconds = '00'
    end
  @time_string = hours.to_s + ':' + mins.to_s + ':' + @seconds.to_s
  end
end
