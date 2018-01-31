class Admin < ApplicationRecord
  
  after_create :send_admin_mail
  def send_admin_mail
    UserMailer.send_new_user_message(self).deliver_now
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
