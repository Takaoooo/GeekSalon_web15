Rails.application.routes.draw do
  root 'tweets#index'
  get 'tweets/index' => 'tweets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end