class AddTotalScoreToTestResult < ActiveRecord::Migration[5.2]
  def change
    add_column :test_results, :total_score, :integer
  end
end
