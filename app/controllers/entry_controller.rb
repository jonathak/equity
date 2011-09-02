class EntryController < ApplicationController
  def home
  end

  def login
  end
  
  def authorize
    if User.where(:email => params[:email]).exists?
      if ((user =User.where(:email => params[:email]).first).login) == params[:password]
        session[:user_id] = user.id
        redirect_to :companies
      else
        redirect_to :error
      end
    else
      redirect_to :error
    end   
  end

  def signup
  end

end
