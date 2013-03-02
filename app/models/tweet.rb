class Tweet < ActiveRecord::Base
  validates_presence_of :tweet_id 
  validates_format_of :tweet_id, :with => /^\d{10,}$/
  attr_accessible :body, :tweet_id
end
