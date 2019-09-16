class Spending < ApplicationRecord
  has_many :moneys
  has_many :users, through: :moneys
end
