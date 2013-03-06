class Tweet < ActiveRecord::Base
  validates_presence_of :tweet_id 
  validates_presence_of :body
  validates_format_of :tweet_id, :with => /^\d{10,}$/
  
  attr_accessible :body, :tweet_id, :name




  def tweeter_name(tweet_id_string)
    self.name = Twitter.status(tweet_id_string).user.name
  end

  def tweet_text(tweet_id_string)
  	self.body = Twitter.status(tweet_id_string).text
  end

end
