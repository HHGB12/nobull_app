class Website < ApplicationRecord
  belongs_to :user
  has_one :information
end
