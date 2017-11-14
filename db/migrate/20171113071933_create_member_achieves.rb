class CreateMemberAchieves < ActiveRecord::Migration[5.1]
  def change
    create_table :member_achieves do |t|
      t.references :member, foreign_key: true
      t.references :achievement, foreign_key: true

      t.timestamps
    end
  end
end
