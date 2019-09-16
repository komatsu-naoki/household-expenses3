class Spending < ApplicationRecord
  has_many :moneys
  has_many :users, through: :moneys

  validates :value, presence: true

  def self.sumvalue
     sum1 = Spending.where(name: "食費")
     sum2 = sum1.select(:value)
     sum3 = sum2.sum(:value)
  end
  
end
