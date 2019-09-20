class Spending < ApplicationRecord
  has_many :moneys
  has_many :users, through: :moneys
  has_many :homes
  has_many :meetings
  has_many :users, through: :meetings

  validates :value, presence: true
  validates :name, presence: true
  validates :date, presence: true

end
