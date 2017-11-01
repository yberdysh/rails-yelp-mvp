class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in:
    %w(italian japanese french belgian chinese russian mexican ethiopian thai indonesian vietnamese),
    allow_nil: false }
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
end
