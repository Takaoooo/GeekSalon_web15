Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'hello/index' => 'hello#index'
  get 'hello/link' => 'hello#link'

  #Tweetの投稿に関するページ
  #投稿ページ表示
  get 'tweets/new' => 'tweets#new'
  #投稿し、ホームにリダイレクト
  post 'tweets/new' => 'tweets#create'
  #投稿一覧
  get 'tweets/index' => 'tweets#index'

end