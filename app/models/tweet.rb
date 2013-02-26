class Tweet < ActiveRecord::Base
  validates_presence_of :tweet_id 
  validates_format_of :tweet_id, :with => /^\d*$/
  attr_accessible :body, :tweet_id
end
