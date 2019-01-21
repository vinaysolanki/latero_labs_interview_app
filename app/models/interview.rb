class Interview < ApplicationRecord
  has_many :test_skills, dependent: :destroy
  has_many :test_results,  dependent: :destroy
  validates :name, presence: true, length: { minimum: 6 }
end
