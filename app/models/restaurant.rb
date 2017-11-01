class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  before_validation { self.category = self.category.downcase unless self.category.nil? }
  validates :category, inclusion: { in:
    %w(italian japanese french belgian chinese russian mexican ethiopian thai indonesian vietnamese),
    allow_nil: false}, presence: true
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true

  def average_rating
    average_rating = 0
    if self.reviews.length > 0
      self.reviews.each do |review|
        average_rating += review.rating
      end
      average_rating = average_rating / self.reviews.length
    end
    return average_rating
  end
end
