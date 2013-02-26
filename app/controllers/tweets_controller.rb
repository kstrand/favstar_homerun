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
    begin
      @tweet.body = Twitter.status(@tweet.tweet_id).text
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
  end
end
