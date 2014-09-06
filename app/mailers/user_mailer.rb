class UserMailer < ActionMailer::Base
  default :from => "matt@grandsendstation.herokuapp.com",
          :bcc => "mattlucas@gmail.com"
  

  def welcome_email(user)
    @user = user
    @url  = "http://grandsendstation.herokuapp.com"
    mail(:to => user.email, :subject => "Welcome to The Big Leagues of Climbing")
  end
  
end