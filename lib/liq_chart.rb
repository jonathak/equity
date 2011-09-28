# liquidation chart
# [[priority1, amount1], [priority2, amount2], ...]
# a company object has a liquidation chart
# and an entity object has a liquidation chart
# represented as method in each case, calculated in real time
class LiqChart
  
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
    
  def priorities
    begin
      @data.map{|pair| pair[0]}.uniq.sort
    rescue
      nil
    end
  end
  
  def ranks
    begin
      (0..(priorities.count-1)).to_a
    rescue
      nil
    end
  end
  
  def rank(priority)
    begin
      priorities.index(priority)
    rescue
      nil
    end
  end
  
  def priority(rank)
    begin
      priorities[rank]
    rescue
      nil
    end
  end
  
  # note that rank rules over priority
  def amount(column = {:priority => nil, :rank => nil})
    begin
      if column[:priority]
        @data.select{|item| item[0] == column[:priority]}.first[1]
      elsif column[:rank]
        @data.select{|item| item[0] == priority(column[:rank])}.first[1]
      else
        0.0
      end
    rescue
      0.0
    end
  end
  
  def total_liq
    begin
      @data.map{|item| item[1]}.sum
    rescue
      nil
    end
  end
  
end