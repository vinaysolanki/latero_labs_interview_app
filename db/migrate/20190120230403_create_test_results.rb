class CreateTestResults < ActiveRecord::Migration[5.2]
  def change
    create_table :test_results do |t|
      t.string :candidate_name

      t.timestamps
    end
  end
end
