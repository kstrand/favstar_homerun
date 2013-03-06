class Tweet < ActiveRecord::Base
  validates_presence_of :tweet_id 
  validates_presence_of :body
  validates_format_of :tweet_id, :with => /^\d{10,}$/
  
  attr_accessible :body, :tweet_id, :name

  validate :twitter_body_cannot_be_blank


  def tweeter_name(tweet_id_string)
    self.name = Twitter.status(tweet_id_string).user.name
  end

  def tweet_text(tweet_id_string)
  	self.body = Twitter.status(tweet_id_string).text
  end

  def twitter_body_cannot_be_blank
    if self.body.blank?
      errors.add(:tweet, "can't be in the past")
    else
    	true
    end
  end


end
