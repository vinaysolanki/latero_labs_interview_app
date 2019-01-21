class TestScore < ApplicationRecord
  belongs_to :test_result
  belongs_to :test_skill

  validates :score, presence: true, inclusion: 1..10
  before_create :numerize_score
  after_save :update_total_score

  private

  def numerize_score
    self.score = score.to_i
  end

  def update_total_score
    test_result.update_total_score
  end
end
