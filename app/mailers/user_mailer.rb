class UserMailer < ApplicationMailer
  default from: 'angle.girls.0.03@gmail.com'
 
  def welcome_email(student)
    @student = student
    @url  = 'https://murmuring-thicket-57018.herokuapp.com/admins/sign_in'
    mail(to: @student.email, subject: 'Welcome to My Awesome Site')
  end

  def send_new_user_message(admin)
  	@admin = admin
  	@url  = 'http://localhost:3000/admins/sign_in'
    mail(to: @admin.email, subject: 'Welcome to My Awesome Site')
  end
end
