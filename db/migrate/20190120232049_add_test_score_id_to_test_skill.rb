class AddTestScoreIdToTestSkill < ActiveRecord::Migration[5.2]
  def change
    add_column :test_skills, :test_score_id, :integer
    add_index :test_skills, :test_score_id
  end
end
