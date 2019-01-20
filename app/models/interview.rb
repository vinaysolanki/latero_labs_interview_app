class Interview < ApplicationRecord
  has_many :test_skills
  validates :name, presence: true, length: { minimum: 6 }
end
