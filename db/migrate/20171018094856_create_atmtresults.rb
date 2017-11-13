class CreateAtmtresults < ActiveRecord::Migration[5.1]
  def change
    create_table :atmtresults do |t|
      t.integer :atmtTaskResult , default: 0 #タスク結果
      t.references :member, foreign_key: true
      
      t.timestamps
    end
    add_index :atmtresults, [:member_id, :created_at]
  end
end
