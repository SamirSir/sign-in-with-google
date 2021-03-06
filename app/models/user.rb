class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         
         :omniauthable, omniauth_providers: [:google_oauth2]


    def self.from_google(email:, full_name:, uid:, avatar_url:)
     	return nil unless email =~ /@gmail.com\z/
     	create_with(uid: uid , full_name: full_name, password: Devise.friendly_token[0,20], avatar_url: avatar_url).find_or_create_by!(email: email)
    end

    def username
      return self.email.split('@')[0].capitalize
    end

end
