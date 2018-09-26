Rails.application.routes.draw do
  devise_for :controllers
  # devise_for :users
  devise_for :users, controllers: { registrations: 'users/registrations' }
  get 'welcome/index'
  root :to => "welcome#index"
  resources :products
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace 'api' do
    namespace 'v1' do 
      post 'auth_user' => 'authentication#authenticate_user'
    end
  end

end
