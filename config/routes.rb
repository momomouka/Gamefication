Rails.application.routes.draw do
  get 'clickresults/index'
  get 'clickresults/new'
  post 'clickresults/create'
  get 'clickresults/game'
  post 'clickresults/score_get'

  get 'mathresults/index'
  get 'mathresults/new'
  post 'mathresults/create'
  get 'mathresults/game'
  post 'mathresults/score_get'

  get 'atmtresults/index'
  get 'atmtresults/new'
  post 'atmtresults/create'
  get 'atmtresults/game'
  post 'atmtresults/score_get'

  get 'feedback/show'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get 'tasks/index'
  get 'rankings/index'
  get 'rankings/atmt'
  get 'rankings/math'
  get 'rankings/click'


  root to: "top#index"
  get 'top/about'

  resources :members do
    collection {get "search"}
  end
  put 'members/allupdate'
  get 'members/alledit'

  resource :account, only: [:show, :edit, :update]
  resource :sumscores, only: [:show, :new, :update]
  resource :achievements, only: [:show, :new, :create]
  get 'achievements/atmt'
  get 'achievements/math'
  get 'achievements/click'

  resource :questions, only: [:new, :create]
  resource :alledits, only: [:show]
  put 'alledits/todayreset'
  put 'alledits/taska'
  put 'alledits/taskm'
  put 'alledits/taskc'
  put 'alledits/gamer'
  put 'alledits/gamea'
  put 'alledits/all'
  put 'alledits/not'
  get 'alledits/member'
  get 'alledits/atmt'
  get 'alledits/math'
  get 'alledits/click'

end
