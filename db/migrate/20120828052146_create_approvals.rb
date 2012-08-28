class CreateApprovals < ActiveRecord::Migration
  def change
    create_table :approvals do |t|
      t.references :user
      t.references :solution
      t.string :approval_text
      t.boolean :approved

      t.timestamps
    end
    add_index :approvals, :user_id
    add_index :approvals, :solution_id
  end
end
