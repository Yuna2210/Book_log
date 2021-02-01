class Work < ApplicationRecord
  belongs_to :author
  before_save :capitalize_title

  def capitalize_title
    self.title = self.title.capitalize
  end

  validates :title, presence: true
  validates :release, presence: true
  validates :description, presence: true
  scope :by_position, -> { order(position: :asc) }
end
