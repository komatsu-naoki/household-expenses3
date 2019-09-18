class Income < ApplicationRecord
  has_many :moneys
  has_many :users, through: :moneys
  has_many :homes

  validates :value, presence: true
  validates :name, presence: true
end
