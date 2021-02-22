class Article < ApplicationRecord
  include ImageUploader::Attachment(:image)
  belongs_to :author, class_name: 'User'
  has_many :votes, dependent: :destroy
  has_and_belongs_to_many :categories

  validates :title, presence: true
  validates :text, presence: true
  scope :most_popular, -> { find_by(votes_count: maximum(:votes_count)) }
  scope :ordered_by_most_recent, -> { order(created_at: :desc) }
end
