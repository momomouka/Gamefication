class CreateClickresults < ActiveRecord::Migration[5.1]
  def change
    create_table :clickresults do |t|
      t.integer :clickTaskResult , default: 0 #タスク結果
      t.references :member, foreign_key: true
      
      t.timestamps
    end
    add_index :clickresults, [:member_id, :created_at]
  end
end
