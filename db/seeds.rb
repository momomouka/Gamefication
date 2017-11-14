
Member.create(
  :name => "管理者" ,
  :email => "kanrisuru@gmail.com" ,
  :gender => 0 ,
  :administrator => true ,
  :passname => "Administrator" ,
  :password => "kj7767" ,
  :tasktype => 4 ,
  :gametype => 4 ,
  :membertype => 4
)

Achievement.create(
		:number => 1,
		:title => "銅メダル級の頑張り",
    :explain => "1回のタスクで5点を獲得する"
)

Achievement.create!(
		:number => 2,
		:title => "銀メダル級の頑張り",
    :explain => "1回のタスクで7点を獲得する"
)

Achievement.create(
		:number => 3,
		:title => "金メダル級の頑張り",
		:explain => "1回のタスクで10点を獲得する"
)

Achievement.create(
		:number => 4,
		:title => "実験協力ありがとうございます！",
    :explain => "タスクを行う"
)

Achievement.create(
		:number => 5,
		:title => "日進月歩",
    :explain => "タスク結果の合計が20点を超える"
)

Achievement.create(
		:number => 6,
		:title => "まだまだこれから！",
		:explain => "タスク結果の合計が40点を超える"
)

Achievement.create!(
		:number => 7,
		:title => "やりこみ名人",
		:explain => "タスク結果の合計が60点を超える"
)

Achievement.create(
		:number => 8,
		:title => "ラッキー7",
		:explain => "タスクの着手回数が7回になる"
)

Achievement.create(
		:number => 9,
		:title => "真面目にやって！",
		:explain => "タスクで1点も取らない"
)

Achievement.create(
		:number => 10,
		:title => "やりつくし名人",
		:explain => "実績を10個獲得する"
)