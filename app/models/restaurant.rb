class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  SPECIALITY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: SPECIALITY }
end
