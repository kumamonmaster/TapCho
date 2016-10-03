class Bank < ApplicationRecord
  belongs_to :user
  has_one :money, dependent: :destroy

  validates :title, presence: true
end
