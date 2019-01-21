class AddTestResultIdToTestScore < ActiveRecord::Migration[5.2]
  def change
    add_column :test_scores, :test_result_id, :integer
    add_index :test_scores, :test_result_id
  end
end
