class CreateAlledits < ActiveRecord::Migration[5.1]
  def change
    create_table :alledits do |t|

      t.timestamps
    end
  end
end
