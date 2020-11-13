class Cocktail < ApplicationRecord
  has_one_attached :photo
  validate :check_file_presence
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true

  def check_file_presence
    errors.add(:photo, "no file added") unless photo.attached?
  end
end
