class CreateAchievements < ActiveRecord::Migration[5.1]
  def change
    create_table :achievements do |t|
      t.integer :number
      t.text :title
      t.text :explain
      
      
      t.timestamps
    end
  end
end
