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
    @tweet.body = Twitter.status(@tweet.tweet_id).text
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
