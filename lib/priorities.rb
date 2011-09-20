# priorities
# [[0, [s1, s2, ...]], [1, [s5, s6, ...]], ...]
class Priorities
  
  def initialize
    @data = []
  end
  
  def clear
    @data = []
  end
  
  def set_data(a)
    @data = a
  end
  
  def push(level)
    puts @data
    @data += [level]
  end
  
  def data
    @data
  end
  
  # list (array) of priorities
  def priorities
    if data == []
      []
    else
      @data.map(&:first)
    end
  end
  
  #list (array) of securities for a specific priority
  def securities(priority)
    if data == []
      []
    else
      @data.select{|l| l[0] == priority}.first[1]
    end
  end

end