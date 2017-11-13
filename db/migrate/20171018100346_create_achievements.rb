class CreateAchievements < ActiveRecord::Migration[5.1]
  def change
    create_table :achievements do |t|
      t.references :member, foreign_key: true
      t.integer :number
      t.text :title
      
      
      t.timestamps
    end
    add_index :achievements, [:member_id, :created_at]
  end
end
