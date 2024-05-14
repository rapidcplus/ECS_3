class Items < ApplicationRecord
  belongs_to :user
  has_many :item_tags, dependent: :destroy
  has_many :tags, through: :item_tags

  validates :title, presence: true, length: { maximum: 255 }
  validates :item_url, presence: true, length: { maximum: 255 }
  # 説明欄は必須ではない
  validates :description, length: { maximum: 255 }, allow_blank: true

  # def youtube_video_id
  #   uri = URI.parse(self.item_url)
  #   uri.path.split('/').last
  # end

end