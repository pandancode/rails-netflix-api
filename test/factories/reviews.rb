FactoryBot.define do
  factory :review do
    comment { "MyText" }
    like_counter { 1 }
    user_id { nil }
    watchlist_id { nil }
  end
end
