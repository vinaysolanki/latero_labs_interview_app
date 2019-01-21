class TestResult < ApplicationRecord
  has_many :test_scores, dependent: :destroy
  belongs_to :interview
end
