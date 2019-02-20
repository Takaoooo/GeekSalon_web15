class TweetsController < ApplicationController
    #ログインしていなかったら、このコントローラーの全ての機能を使えない
    before_action :authenticate_user!
    def index
        @tweets = Tweet.all.order("id DESC")
    end

    def new
        @tweet = Tweet.new
    end

    def create
        @tweet = Tweet.new(tweet_params)
        #現在ログインしているUserのidをTweetのuser_idという部分にセット
        @tweet.user_id = current_user.id
        #新しいTweetの保存に成功した場合
        if @tweet.save
            #index.html.erbにページが移る
            redirect_to action: "index"
            #新しいTweetの保存に失敗した場合
        else
            #もう一回投稿画面へ
            redirect_to action: "new"
            end
    end

    private
    #セキュリティのため、許可した:bodyというデータだけ取ってくるようにする
    def tweet_params
        params.require(:tweet).permit(:body)
    end
end