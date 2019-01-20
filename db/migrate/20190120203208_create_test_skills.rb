class CreateTestSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :test_skills do |t|
      t.string :name
      t.references :interview, foreign_key: true

      t.timestamps
    end
  end
end
