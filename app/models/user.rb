class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :confirmable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable

  has_many :articles, dependent: :destroy
end
