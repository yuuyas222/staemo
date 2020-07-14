class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :emotions, dependent: :destroy
  has_many :frendships, dependent: :destroy
  has_many :favorites, dependent: :destroy
end
