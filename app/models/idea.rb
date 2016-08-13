class Idea < ApplicationRecord
  validates :title, presence: true ,length: {minimum: 10}
  validates :description, presence: true, length: {maximum: 500}
  validate :check_planned_to
  def check_planned_to
    if planned_to.present? && planned_to < Date.today
      errors.add(:planned_to, "Geçmişte bir tarih olamaz")
    end
  end

  belongs_to :category
end
