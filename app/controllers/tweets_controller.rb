class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweets = Tweet.all
    @tweet = Tweet.new
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def create
    @tweet = Tweet.new(params[:tweet])
      tweet_id_string = @tweet.tweet_id

      begin
      @tweet.tweeter_name(tweet_id_string)
      @tweet.tweet_text(tweet_id_string)
      rescue => error
        flash[:notice] = "You should enter a legit tweet id."
      end
    
    @tweet.save
    redirect_to new_tweet_path      
  end

  def edit
  end

  def update
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.delete
    redirect_to new_tweet_path
  end
end
