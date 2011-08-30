# my own extension of the Integer class
class Integer
    
  def company
    begin
      Company.find(self)
    rescue
      nil
    end
  end
  
  def security
    begin
      Security.find(self)
    rescue
      nil
    end
  end
  
  def entity
    begin
      Entity.find(self)
    rescue
      nil
    end
  end
  
  def user
    begin
      User.find(self)
    rescue
      nil
    end
  end
  
  alias :c :company
  alias :s :security
  alias :e :entity
  alias :u :user
  
end