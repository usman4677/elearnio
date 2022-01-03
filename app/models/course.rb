class Course < ApplicationRecord
  has_many :activities, dependent: :destroy
  belongs_to :coach

  validates :name, presence: true
end
