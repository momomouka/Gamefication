
Member.create(
  :fullname => "管理者",
  :name => "管理者" ,
  :email => "kaiho.okalab2017@gmail.com" ,
  :gender => 0 ,
  :administrator => true ,
  :passname => "Administrator" ,
  :password => "kj7767" ,
  :tasktype => 4 ,
  :gametype => 4 ,
  :membertype => 4
)

# ATMT Achievements
Achievement.create(
  :number => 1,
  :title => "実験協力ありがとうございます！",
  :explain => "タスクを行う"
)
Achievement.create(
		:number => 2,
		:title => "銅メダル級の頑張り",
    :explain => "1回のタスクで30点を獲得する"
)

Achievement.create!(
		:number => 3,
		:title => "銀メダル級の頑張り",
    :explain => "1回のタスクで50点を獲得する"
)

Achievement.create(
		:number => 4,
		:title => "金メダル級の頑張り",
		:explain => "1回のタスクで70点を獲得する"
)

Achievement.create(
		:number => 5,
		:title => "日進月歩",
    :explain => "タスク結果の合計が300点を超える"
)

Achievement.create(
		:number => 6,
		:title => "まだまだこれから！",
		:explain => "タスク結果の合計が500点を超える"
)

Achievement.create!(
		:number => 7,
		:title => "やりこみ名人",
		:explain => "タスク結果の合計が1000点を超える"
)

Achievement.create(
		:number => 8,
		:title => "ラッキー7",
		:explain => "タスクの着手回数が7回になる"
)

Achievement.create(
		:number => 9,
		:title => "真面目にやって！",
		:explain => "タスクで20点以下を取る"
)

Achievement.create(
		:number => 10,
		:title => "やりつくし名人",
		:explain => "実績を10個獲得する"
)



# Math Achievements

Achievement.create(
  :number => 1,
  :title => "実験協力ありがとうございます！",
  :explain => "タスクを行う"
)
Achievement.create(
  :number => 2,
  :title => "銅メダル級の頑張り",
  :explain => "1回のタスクで10点を獲得する"
)

Achievement.create!(
  :number => 3,
  :title => "銀メダル級の頑張り",
  :explain => "1回のタスクで20点を獲得する"
)

Achievement.create(
  :number => 4,
  :title => "金メダル級の頑張り",
  :explain => "1回のタスクで30点を獲得する"
)

Achievement.create(
  :number => 5,
  :title => "日進月歩",
  :explain => "タスク結果の合計が100点を超える"
)

Achievement.create(
  :number => 6,
  :title => "まだまだこれから！",
  :explain => "タスク結果の合計が200点を超える"
)

Achievement.create!(
  :number => 7,
  :title => "やりこみ名人",
  :explain => "タスク結果の合計が400点を超える"
)

Achievement.create(
  :number => 8,
  :title => "ラッキー7",
  :explain => "タスクの着手回数が7回になる"
)

Achievement.create(
  :number => 9,
  :title => "精進あるのみ！",
  :explain => "タスクで7点以下を取る"
)

Achievement.create(
  :number => 10,
  :title => "やりつくし名人",
  :explain => "実績を10個獲得する"
)




# Click Achievements
Achievement.create(
  :number => 1,
  :title => "実験協力ありがとうございます！",
  :explain => "タスクを行う"
)
Achievement.create(
  :number => 2,
  :title => "銅メダル級の頑張り",
  :explain => "1回のタスクで20点を獲得する"
)

Achievement.create!(
  :number => 3,
  :title => "銀メダル級の頑張り",
  :explain => "1回のタスクで35点を獲得する"
)

Achievement.create(
  :number => 4,
  :title => "金メダル級の頑張り",
  :explain => "1回のタスクで50点を獲得する"
)

Achievement.create(
  :number => 5,
  :title => "日進月歩",
  :explain => "タスク結果の合計が150点を超える"
)

Achievement.create(
  :number => 6,
  :title => "まだまだこれから！",
  :explain => "タスク結果の合計が300点を超える"
)

Achievement.create!(
  :number => 7,
  :title => "やりこみ名人",
  :explain => "タスク結果の合計が600点を超える"
)

Achievement.create(
  :number => 8,
  :title => "ラッキー7",
  :explain => "タスクの着手回数が7回になる"
)

Achievement.create(
  :number => 9,
  :title => "真面目にやって！",
  :explain => "タスクで15点以下を取る"
)

Achievement.create(
  :number => 10,
  :title => "やりつくし名人",
  :explain => "実績を10個獲得する"
)