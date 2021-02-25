class Category < ApplicationRecord
  has_and_belongs_to_many :articles
  validates :name, presence: true, length: { mininum: 2, maximum: 20 }

  scope :priority_order, -> { order(:priority) }

  def most_recent_article
    articles.most_recents.limit(1)
  end
end
