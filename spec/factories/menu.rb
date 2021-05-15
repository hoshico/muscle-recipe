FactoryBot.define do
  factory :menu do
    title {"ぶりの照り焼き"}
    recipe {"じっくりと丁寧にやく。"}
    association :user 

    after(:build) do |menu|
      menu.image.attach(io: File.open('public/images/test_image.jpeg'), filename: 'test_image.jpeg')
    end
  end
end