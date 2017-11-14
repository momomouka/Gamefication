class CreateMembers < ActiveRecord::Migration[5.1]
	def change
		create_table :members do |t|
			t.string :name, null: false # 名前
			t.string :email, null: false # メアド
			t.integer :gender, null: false, default: 0 # 性別　0は男　1は女
			t.date :birthday # 誕生日
			t.boolean :administrator, null: false, default: false # 管理者フラグ
			t.string :passname, null: false
			t.string :password_digest
			t.integer :tasktype, null: false, default: 0 # 順に無分類,ATMT,MATH,CLICK,ALL
			t.integer :gametype, null: false, default: 0 # 順に無分類、なし、ランキング、実績,ALL
			t.integer :membertype, null: false, default: 0 # 順に無分類、合致群、非合致群、無関心群

			t.timestamps
		end
	end
end
