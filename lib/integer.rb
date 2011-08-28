# my own extension of the Integer class
class Integer
    
  def company
    Company.find(self)
  end
  
  def security
    Security.find(self)
  end
  
  def entity
    Entity.find(self)
  end
  
  alias :c :company
  alias :s :security
  alias :e :entity
  
end