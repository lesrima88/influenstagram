class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :posts
  has_many :reviews
  #has_many :visits, class_name: “Ahoy::Visit”
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

#has_one_attached :avatar


end
