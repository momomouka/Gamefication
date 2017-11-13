class CreateSumscores < ActiveRecord::Migration[5.1]
  def change
    create_table :sumscores do |t|
      t.references :member, foreign_key: true

      t.integer :atmt
      t.integer :math
      t.integer :click

      t.timestamps

    end
    add_index :sumscores, [:member_id, :created_at]
  end
end
