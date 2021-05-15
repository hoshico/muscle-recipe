FactoryBot.define do
   factory :food_stuff do
     meet_id { 1 }
     meet_quantity { 100 }
     fish_id { 1 }
     fish_quantity { 100 }
     vege_id { 1 }
     vege_quantity { 100 }
     dairy_id { 1 }
     dairy_quantity { 100 }
     total_p { 20 }
     total_f { 20 }
     total_c { 20 }
     etc_food {"塩胡椒：少々"}
     association :menu 
   end
end