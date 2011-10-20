# my own extension of the Array class
class Array
    
  def conversions_helper
    if size == 1
      id = first
      security = id.s
      company = security.company
      [id,(company.liq_pref - security.liq_payout) + (security.cap/security.percent)]
    else
      puts "hello"
    end
  end
  
end