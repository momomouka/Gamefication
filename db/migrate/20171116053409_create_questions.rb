class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|

      t.integer :q1 # 週に何時間程度ゲームをしますか？
      t.text :q2 # 好きなゲームはなんですか?
      t.text :q3 # その中でどの要素/システム etc.. が好きですか?
      t.integer :q41 # 空想
      t.integer :q42
      t.integer :q43
      t.integer :q44
      t.integer :q45
      t.integer :q51 # 承認
      t.integer :q52
      t.integer :q53
      t.integer :q54
      t.integer :q55
      t.integer :q61 # 趣向
      t.integer :q62
      t.integer :q63
      t.integer :q64
      t.integer :q65
      t.integer :q71 # 達成
      t.integer :q72
      t.integer :q73
      t.integer :q74
      t.integer :q75
      t.integer :q81 # 友達
      t.integer :q82
      t.integer :q83
      t.integer :q84
      t.integer :q85
      t.integer :q91 # 学習
      t.integer :q92
      t.integer :q93
      t.integer :q94
      t.integer :q95
      t.integer :q101 # 気晴らし
      t.integer :q102
      t.integer :q103
      t.integer :q104
      t.integer :q105
      t.references :member, foreign_key: true
      t.timestamps
    end
    add_index :questions, [:member_id, :created_at]
  end
end