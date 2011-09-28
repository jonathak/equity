# liq_payout_chart
# [[0, 0], [sum(p1..p(n-1)),0], [sum(p1..pn), pn], [pn/mn, pn]]
# [ plateau, liq_pref, plateau, conversion]
# some security objects have a liq_payout_chart
# only securities with liquidity preferences
# represented as method, calculated in real time
class LiqPayoutChart
  
  def initialize
    @data = [[0.0,0.0], [0.0,0.0], [0.0,0.0], [0.0,0.0]]
  end
  
  def clear
    @data = [[0.0,0.0], [0.0,0.0], [0.0,0.0], [0.0,0.0]]
  end
  
  def data(data = nil)
    if data
      @data = data
    else
      @data
    end
  end
  
  def colors
    a = (0..(rows-2)).to_a.map{|i| Color.blue[i]} + [Color.s_grey]
    s = "["
    a.each{|i| s += "#{i},"}
    s.chop!
    s += "]"
    s
  end
  
end