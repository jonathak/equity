class UserMailer < ActionMailer::Base
  default :from => "77shares@gmail.com"
  
  def welcome_email(user)
    @user = user
    @url  = "http://www.77shares.com"
    mail(:to => user.email,
         :subject => "Welcome to 77Shares")
  end
  
end
