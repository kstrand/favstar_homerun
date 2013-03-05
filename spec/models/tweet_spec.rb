require 'spec_helper'

describe Tweet do
  it "has a valid factory" do
  	FactoryGirl.create(:tweet).should be_valid
  end

  it "is invalid without a tweed_id" do
  	FactoryGirl.build(:tweet, tweet_id: nil).should_not be_valid
  end

  it "is invaild without a body" do 
  	FactoryGirl.build(:tweet, body: nil).should_not be_valid
  end

  describe "is valid when" do
    context "correct number of digits" do
      it "is valid with a 10 digit id " do
        FactoryGirl.build(:tweet, tweet_id: "0123456789").should  be_valid
      end 
    end

    end

end
