class FixTestSkillId < ActiveRecord::Migration[5.2]
  def change
    remove_column :test_skills, :test_score_id, :integer

    add_column :test_scores, :test_skill_id, :integer
    add_index :test_scores, :test_skill_id
  end
end
