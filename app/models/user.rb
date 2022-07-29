class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        #  validates :email, uniqueness: {message: "This email is already registereds"}, email: true
        #  ! PASSWORD IS HANDLED BY "has_secured_password" from the "bcrypt" gem
end
