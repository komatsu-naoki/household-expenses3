class Income < ApplicationRecord
  has_many :moneys
  belongs_to :user
end
