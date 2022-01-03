class Coach < ApplicationRecord
  has_one :course, dependent: :nullify

  validates :name, presence: true
end
