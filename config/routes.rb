Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles do
    resources :comments, only: :create
  end

  root 'articles#index'

  #get 'login' => 'user_sessions#new'
  #post 'login' => 'user_session#create'
  #delete 'logout' => 'user_sessions#destroy'
end
