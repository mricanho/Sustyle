class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :votes, dependent: :destroy
  has_and_belongs_to_many :categories
  has_one_attached :image

  validates :title, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 100 }
  validates :text, presence: true
  scope :ordered_by_most_recent, -> { order(created_at: :desc) }

  mount_uploader :image, ImageUploader
end
