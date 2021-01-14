class Promocode < ApplicationRecord
  extend FriendlyId
  friendly_id :code_title, use: :slugged
    


  belongs_to :user
  validates :code_wacode_price, presence: true
end
