class Recipe < ApplicationRecord
  belongs_to :user
  # attachment :image
  has_many :comments
  has_many :likes, dependent: :destroy

  mount_uploader :image, ImageUploader

  mount_uploader :image, ImageUploader

  with_options presence: true do
    validates :title
    validates :body
    validates :image
  end

  def self.search(search)
    if search != ""
      Recipe.where('title LIKE(?)', "%#{search}%")
    else
      Recipe.all
    end
  end
end
