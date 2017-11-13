class CreateMathresults < ActiveRecord::Migration[5.1]
  def change
    create_table :mathresults do |t|
      t.integer :mathTaskResult , default: 0 #タスク結果
      t.references :member, foreign_key: true
      
      t.timestamps
    end
    add_index :mathresults, [:member_id, :created_at]
  end
end
