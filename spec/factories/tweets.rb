# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tweet do
    tweet_id "1234567890"
    body "MyText"
    # name "Bob"
  end
end
