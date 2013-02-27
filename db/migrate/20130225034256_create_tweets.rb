class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :tweet_id
      t.text :body

      t.timestamps
    end
  end
end
