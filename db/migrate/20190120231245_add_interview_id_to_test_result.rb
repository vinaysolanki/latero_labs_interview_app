class AddInterviewIdToTestResult < ActiveRecord::Migration[5.2]
  def change
    add_column :test_results, :interview_id, :integer
    add_index :test_results, :interview_id
  end
end
