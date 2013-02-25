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
    @tweet = Tweet.new
    @tweet.body = Twitter.status(params[:tweet_id])
    puts "+++++++++++++"
    puts @tweet.body.text
    puts "++++++++++++++"
    @tweet.save
    #redirect_to new_tweet_path 
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
