Rails.application.routes.draw do
  get 'tweets/index'
  get tweets/show => 'tweets#show' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'hello/index' => 'hello#index'
  get 'hello/link' => 'hello#link'
  root 'hello#index'
  get 'tweets/new' => 'tweets#new'
  #投稿し、ホームにリダイレクト
  post 'tweets/new' => 'tweets#create'
  #投稿一覧
  get 'tweets/index' => 'tweets#index'
end
