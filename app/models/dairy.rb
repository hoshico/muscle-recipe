class Dairy < ActiveHash::Base
      self.data = [
          { id: 1, name: '--' },
          { id: 2, name: 'チーズ', protein: 0.23, fat: 0.26, carbo: 0.26 },
          { id: 3, name: 'ヨーグルト', protein: 0.22, fat: 0.02, carbo: 0 },
          { id: 4, name: '卵(1個50g)', protein: 0.23, fat: 0, carbo: 0 },
          { id: 5, name: '豆腐', protein: 0.16, fat: 0.14, carbo: 0 },
       ]
    
          include ActiveHash::Associations
          has_many :menus
    
end