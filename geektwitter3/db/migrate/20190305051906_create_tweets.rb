class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      # 以下にカラムを追加するコードを記述する
      t.text :body
      t.timestamps
    end
  end
end
