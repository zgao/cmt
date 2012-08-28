class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.references :user
      t.string :problem_text

      t.timestamps
    end
    add_index :problems, :user_id
  end
end
