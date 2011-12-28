# percentage chart
# [[security_id_1, percentage1], [security_id_2, percentage2], ...]
# an entity object has a percentage chart
# represented as method, calculated in real time
class PercentageChart
  
  def initialize
    @data = []
  end
  
  def clear
    @data = []
  end
  
  def push(pair)
    puts @data
    @data += [pair]
  end
  
  def data
    @data
  end
  
  def descend
    @data = @data.sort{|a,b| b[1]<=>a[1]}
    self
  end
  
  def rows
    @data.count + 1
  end
  
  def colors
    a = (0..(rows-2)).to_a.map{|i| Color.blue[i]} + [Color.s_grey]
    s = "["
    a.each{|i| s += "#{i},"}
    s.chop!
    s += "]"
    s
  end
    
  def securities
    begin
      @data.map{|pair| pair[0]}.uniq
    rescue
      nil
    end
  end
  
  def amounts
    begin
      @data.map{|pair| pair[1]}.uniq
    rescue
      nil
    end
  end
  
  # %percentage for a given security
  # if no security passed, then total percentage
  def amount(security_id = nil)
    begin
      if security_id
        @data.select{|item| item[0] == security_id}.first[1]
      else
        @data.map{|i| i[1]}.sum
      end
    rescue
      nil
    end
  end
  
end