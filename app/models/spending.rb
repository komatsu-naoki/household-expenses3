class Spending < ApplicationRecord
  has_many :moneys
  has_many :users, through: :moneys

  validates :value, presence: true

end
