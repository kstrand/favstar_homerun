class AddTweetIdFromTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :tweet_id, :bigint
  end
end
