class Author < ApplicationRecord
  has_many :works
  before_save :capitalize_name

  def capitalize_name
    self.name = self.name.capitalize
  end

  validates :name, presence: true
  validates :country, presence: true
  scope :by_position, -> { order(position: :asc) }
end
