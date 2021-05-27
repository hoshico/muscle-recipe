class Dairy < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'チーズ', protein: 0.23, fat: 0.26, carbo: 0.26 },
    { id: 3, name: 'ヨーグルト', protein: 0.22, fat: 0.02, carbo: 0 },
    { id: 4, name: '牛乳', protein: 0.03, fat: 0.04, carbo: 0.05 },
    { id: 5, name: '卵(1個50g)', protein: 0.23, fat: 0, carbo: 0 },
    { id: 6, name: '豆腐', protein: 0.16, fat: 0.14, carbo: 0 },
    { id: 7, name: 'ひよこ豆', protein: 0.1, fat: 0.03, carbo: 0.3 }
  ]

  include ActiveHash::Associations
  has_many :menus
end
