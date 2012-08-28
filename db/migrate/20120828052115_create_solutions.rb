class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.references :user
      t.references :problem
      t.string :solution_text

      t.timestamps
    end
    add_index :solutions, :user_id
    add_index :solutions, :problem_id
  end
end
