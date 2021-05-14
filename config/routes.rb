Rails.application.routes.draw do
  devise_for :users,
    controllers: { 
      registrations: 'registrations',
      sessions: :sessions
    }

  root 'top#index'
  resources :users do
    collection do
      get 'search'
    end
  end

  resources :users, only: [:show, :index, :search]

  resources :reactions, only: [:create]

  resources :matching, only: [:index]

  resources :chat_rooms, only: [:create, :show]
  
end
