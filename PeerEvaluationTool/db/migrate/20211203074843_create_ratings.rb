class CreateRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.integer :group_no
      t.integer :rater_ID
      t.integer :ratee_ID
      t.integer :score

      t.timestamps
    end
  end
end
