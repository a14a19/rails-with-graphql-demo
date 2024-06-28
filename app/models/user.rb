class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist
    has_many :posts
    has_many :user_device_mappings
    has_many :devices, through: :user_device_mappings
    # has_secure_password # for password_digest
end
