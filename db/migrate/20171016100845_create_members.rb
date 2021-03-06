class CreateMembers < ActiveRecord::Migration[5.1]
	def change
		create_table :members do |t|
			t.string :fullname, null: false #フルネーム
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
			t.integer :atmt, default: 0
			t.integer :math, default: 0
			t.integer :click, default: 0
			t.integer :atmttoday, default: 0
			t.integer :mathtoday, default: 0
			t.integer :clicktoday, default: 0
			t.integer :ranking, default: 0
			t.integer :achievement, default: 0

			t.timestamps
		end
	end
end
