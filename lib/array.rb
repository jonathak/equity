# my own extension of the Array class
class Array
    
  def conversions_helper
    company = first.s.company
    securities = self.map(&:s)
    if size == 1
      security = first.s
      [[security.id,(company.liq_pref - security.liq_payout) + ((security.cap || 0.0)/security.percent)]]
    else
      x_shift = company.liq_pref - securities.map(&:liq_payout).sum
      x_max = securities.map{|s| (s.cap || 0.0)/s.percent}.max + x_shift
      s_max = securities.select{|s| ((s.cap || 0.0)/s.percent + x_shift) == x_max}.map(&:id).first
      # might need to include provision above should multiple securities cap at x_max
      next_set = self.reject{|i| i == s_max}
      [[s_max,x_max]] + next_set.conversions_helper
    end
  end
  
end