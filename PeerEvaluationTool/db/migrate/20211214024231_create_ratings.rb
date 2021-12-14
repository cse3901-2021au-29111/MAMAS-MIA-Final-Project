class CreateRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.integer :group_no
      t.string :rater
      t.string :ratee
      t.integer :project_no
      t.integer :score
      t.string :rater_comments
      t.timestamps
    end
  end
end
