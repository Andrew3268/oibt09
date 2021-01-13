class Promocode < ApplicationRecord
  belongs_to :user
  validates :code_wacode_price, presence: true
end
