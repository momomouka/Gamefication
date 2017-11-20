class CreateSumscores < ActiveRecord::Migration[5.1]
  def change
    create_table :sumscores do |t|
      t.references :member, foreign_key: true

      t.integer :atmt , default: 0
      t.integer :math , default: 0
      t.integer :click , default: 0

      t.timestamps

    end
    add_index :sumscores, [:member_id, :created_at]
  end
end
