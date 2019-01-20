class TestSkill < ApplicationRecord
  belongs_to :interview
  validates :name, presence: true
  before_save :capitalize_name

  private

  def capitalize_name
    self.name = name.capitalize if is_lowercase?
  end

  def is_lowercase?
    name[0] == name[0].downcase
  end
end
