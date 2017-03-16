class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :confirmable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable
end
