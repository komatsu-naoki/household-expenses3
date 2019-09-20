class Meeting < ApplicationRecord
  belongs_to :spending, optional: true
  belongs_to :income, optional: true
  belongs_to :user
end
