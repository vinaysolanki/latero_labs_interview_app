class TestScore < ApplicationRecord
  belongs_to :test_result
  belongs_to :test_skill

  validates :score, presence: true
  before_create :numerize_score

  private

  def numerize_score
    self.score = score.to_i
  end
end
