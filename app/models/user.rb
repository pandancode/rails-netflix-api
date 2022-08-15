class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        #  :recoverable, :rememberable, :validatable,
         :jwt_authenticatable,
         jwt_revocation_strategy: JwtDenylist

  validates :username, uniqueness: true, presence: true

  has_many :favorites, dependent: :destroy
  has_many :movies, through: :favorites
  has_many :watchlists
  has_many :reviews
end
