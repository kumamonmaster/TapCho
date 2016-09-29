class Bank < ApplicationRecord
  belongs_to :user
  has_one :monies

  validates :title, presence: true
end
