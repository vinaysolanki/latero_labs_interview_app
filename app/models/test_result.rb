class TestResult < ApplicationRecord
  has_many :test_scores, dependent: :destroy
  belongs_to :interview

  scope :top_results, -> { order(total_score: :desc) }

  def update_total_score
    total_skills_score = test_scores.map(&:score).reduce(:+) if test_scores.any?
    self.total_score = total_skills_score
    save
  end

  def percentage
    total_score / test_scores.count * 10 if test_scores
  end
end
