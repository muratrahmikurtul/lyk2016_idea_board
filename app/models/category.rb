class Category < ApplicationRecord
  validates :color, inclusion: {in: %w(blue green red), message: "mavi yeşil kırmızı olabilir"}
  validates :title, uniqueness: true

  has_many :ideas
end
