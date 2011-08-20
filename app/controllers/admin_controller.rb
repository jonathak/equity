class AdminController < ApplicationController
  def home
    @c_count = Company.count
    @e_count = Entity.count
    @s_count = Security.count
    @t_count = Transaction.count
  end

end
