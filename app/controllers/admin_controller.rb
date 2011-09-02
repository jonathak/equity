class AdminController < ApplicationController
  def home
    @c_count = Company.count
    @e_count = Entity.count
    @s_count = Security.count
    @k_count = Kind.count
    @t_count = Transaction.count
    @i_count = Investment.count
    @u_count = User.count
    @in_count = Invitation.count
    @ki_count = King.count
    @r_count = Request.count
  end
  
  def error
  end
  
  def logout
    session[:user_id] = nil
    session[:company_id] = nil
    session[:entity_id] = nil
    redirect_to '/entry/home'
  end

end
