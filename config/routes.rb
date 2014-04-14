CodeAnswers::Application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'users#destroy', as: 'logout'

  root :to => 'users#home'
  resources :users do
    resources :questions do
      resources :answers
    end
  end
  resources :sessions


end
