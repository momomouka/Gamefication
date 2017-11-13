class CreateTaskresults < ActiveRecord::Migration[5.1]
  def change
    create_table :taskresults do |t|
      
      t.integer :atmtCount1st , default: 0 # 各日のタスク回数
      t.integer :atmtCount2nd , default: 0
      t.integer :atmtCount3rd , default: 0
      t.integer :atmtCount4th , default: 0
      t.integer :atmtCount5th , default: 0
      t.integer :atmtCount6th , default: 0
      t.integer :atmtCount7th , default: 0
      t.integer :atmtCountResult  , default: 0 # タスク回数合算
      
      t.integer :mathCount1st , default: 0 # 各日のタスク回数
      t.integer :mathCount2nd , default: 0
      t.integer :mathCount3rd , default: 0
      t.integer :mathCount4th , default: 0
      t.integer :mathCount5th , default: 0
      t.integer :mathCount6th , default: 0
      t.integer :mathCount7th , default: 0
      t.integer :mathCountResult  , default: 0 # タスク回数合算
      
      t.integer :clickCount1st , default: 0 # 各日のタスク回数
      t.integer :clickCount2nd , default: 0
      t.integer :clickCount3rd , default: 0
      t.integer :clickCount4th , default: 0
      t.integer :clickCount5th , default: 0
      t.integer :clickCount6th , default: 0
      t.integer :clickCount7th , default: 0
      t.integer :clickCountResult  , default: 0 # タスク回数合算
      
      t.references :member, foreign_key: true
      
      t.timestamps
    end
    add_index :taskresults, [:member_id, :created_at]
  end
end
