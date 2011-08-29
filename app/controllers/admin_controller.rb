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
  end

end
