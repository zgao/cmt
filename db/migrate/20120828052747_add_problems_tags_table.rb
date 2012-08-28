class AddProblemsTagsTable < ActiveRecord::Migration
  def up
    create_table :problems_tags do |t|
      t.integer :problem_id
      t.integer :tag_id
    end
  end

  def down
    drop_table :problems_tags
  end
end
