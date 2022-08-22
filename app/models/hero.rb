class Hero < ApplicationRecord
  validates :name, presence: true
  scope :template, -> { where(template: true) }
end
