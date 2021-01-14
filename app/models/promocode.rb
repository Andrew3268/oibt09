class Promocode < ApplicationRecord
  extend FriendlyId
  friendly_id :code_title, use: :slugged

  has_and_belongs_to_many :tags
    
  belongs_to :user
  validates :code_wacode_price, presence: true

  after_create do
      promocode = Promocode.find_by(id: self.id)
      hashtags = self.code_hashtag.scan(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/)
      hashtags.uniq.map do |hashtag|
          tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
          promocode.tags << tag
      end
  end
  
  before_update do
      promocode = Promocode.find_by(id: self.id)
      promocode.tags.clear
      hashtags = self.code_hashtag.scan(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/)
      hashtags.uniq.map do |hashtag|
          tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
          promocode.tags << tag
      end
  end
end
