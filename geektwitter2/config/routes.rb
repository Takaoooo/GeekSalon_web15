Rails.application.routes.draw do
  get 'tweets/index' => 'tweets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'hello#index'
  get 'hello/index' => 'hello#index'
  get 'hello/link' => 'hello#link'
end
