class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :confirmable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable

  has_many :articles, dependent: :destroy
  has_many :lists, dependent: :destroy
  has_many :items, dependent: :destroy
  has_many :keywords, dependent: :destroy
  acts_as_voter

end
