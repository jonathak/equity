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
        flash[:message] = "incorrect login"
        redirect_to "/"
      end
    else
      flash[:message] = "incorrect login"
      redirect_to "/"
    end   
  end

  def signup
  end

end
