class Vege < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ブロッコリー', protein: 0.19, fat: 0.1, carbo: 0 },
    { id: 3, name: 'アボカド', protein: 0.22, fat: 0.02, carbo: 0 },
    { id: 4, name: 'にんじん', protein: 0.23, fat: 0, carbo: 0 },
    { id: 5, name: 'じゃがいも', protein: 0.16, fat: 0.14, carbo: 0 },
    { id: 6, name: 'キャベツ', protein: 0.2, fat: 0.04, carbo: 0 },
    { id: 7, name: 'きゅうり', protein: 0.01, fat: 0, carbo: 0.03 },
    { id: 8, name: '大根', protein: 0, fat: 0, carbo: 0.04 },
    { id: 9, name: '玉ねぎ', protein: 0.01, fat: 0, carbo: 0.09 },
    { id: 10, name: 'トマト', protein: 0.01, fat: 0, carbo: 0.05 },
    { id: 11, name: '白菜', protein: 0.01, fat: 0, carbo: 0.03 },
    { id: 12, name: 'ごぼう', protein: 0.02, fat: 0, carbo: 0.2 },
    { id: 13, name: 'ほうれん草', protein: 0.02, fat: 0, carbo: 0.03 }
  ]

  include ActiveHash::Associations
  has_many :menus
end
