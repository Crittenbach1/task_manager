Rails.application.routes.draw do
  resources :groups, only: [:index, :new, :create, :show]

    resources :groups do
      resources :lists, only: [:index, :new, :create, :show]
    end

    resources :lists, only: [:index, :new, :create, :show]


  devise_for :users

  devise_scope :user do
     get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root 'user#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
