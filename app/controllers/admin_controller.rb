class AdminController < ApplicationController
  def home
    @c_count = Company.count
    @e_count = Entity.count
    @s_count = Security.count
    @k_count = Kind.count
    @t_count = Transaction.count
  end

end
