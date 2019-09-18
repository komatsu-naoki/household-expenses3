class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :moneys
  has_many :spendings, through: :moneys
  has_many :homes
  has_many :incomes, through: :moneys
end
