class Admin < ApplicationRecord
	has_many :articles  
  after_create :send_admin_mail

  def send_admin_mail
    UserMailer.send_new_user_message(self).deliver_now
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
    data = access_token.info
    user = Admin.where(:provider => access_token.provider, :uid => access_token.uid ).first
    if user
      return user
    else
      registered_user = Admin.where(:email => access_token.info.email).first
      if registered_user
        return registered_user
      else
        user = Admin.create(name: data["name"],
          provider:access_token.provider,
          email: data["email"],
          uid: access_token.uid ,
          password: Devise.friendly_token[0,20],
        )
      end
    end
	end


end
