class UserMailer < ActionMailer::Base
  default :from => "77shares@gmail.com"
  
  def welcome_email(user)
    @user = user
    @url  = "http://www.77shares.com"
    mail(:to => user.email,
         :subject => "Welcome to 77Shares")
  end
  
  def invitation_email(invitation)
    @invitation = invitation
    mail(:to => invitation.email,
         :subject => "77Shares Link Request")
  end
  
  def request_email(request)
    @request = request
    mail(:to => request.email,
         :subject => "77Shares Link Request")
  end
  
end
