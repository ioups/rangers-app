class Companion < ApplicationRecord
  validates :name, presence: true
  scope :template, -> { where(template: true) }
end
