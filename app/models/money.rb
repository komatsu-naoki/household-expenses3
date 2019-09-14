class Money < ApplicationRecord
  belongs_to :spending
  belongs_to :income
  belongs_to :user
end
