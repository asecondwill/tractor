Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    root "site#dash"
    get 'dash', to: 'site#dash'
    get 'activity', to: 'site#activity'
    get 'settings', to: 'site#settings'
    get 'homepage', to: 'site#homepage'
    get 'help', to: 'site#help'
    get 'links/search', to: 'links#search'

    get 'links/:id/attachment', to: 'links#attachment'


    resources :site, only: [:update]
    resources :medias do
      get :picker
      get :attachment, on: :member
      post :pickercreate, on: :new
      collection do
        get 'search'
      end
    end
    resources :pages do
      member do
        patch :move
      end
    end
    resources :articles
    resources :userforms
    resources :menus
    resources :users
    resource :embed, only: :update
  end
  resources :youtube, only: :show
  resources :pages, only: :show
  resources :articles, only: [:index, :show]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "articles#index"

end
