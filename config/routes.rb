Rails.application.routes.draw do
  get 'clickresults/index'
  get 'clickresults/new'
  post 'clickresults/create'
  get 'clickresults/game'
  get 'clickresults/score_get'

  get 'mathresults/index'
  get 'mathresults/new'
  post 'mathresults/create'
  get 'mathresults/game'
  get 'mathresults/score_get'

  get 'atmtresults/index'
  get 'atmtresults/new'
  post 'atmtresults/create'
  get 'atmtresults/game'
  get 'atmtresults/score_get'

  get 'feedback/show'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get 'tasks/index'

	root to: "top#index"

  resources :members do
  	collection { get "search" }
  end

  resource :account, only: [:show, :edit, :update]
  resource :sumscores, only: [:show, :new, :create, :update]

end
