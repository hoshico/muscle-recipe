class Fish < ActiveHash::Base
      self.data = [
          { id: 1, name: '--' },
          { id: 2, name: 'マグロ', protein: 0.19, fat: 0.1, carbo: 0 },
          { id: 3, name: 'たら', protein: 0.22, fat: 0.02, carbo: 0 },
          { id: 4, name: 'たこ', protein: 0.23, fat: 0, carbo: 0 },
          { id: 5, name: 'いか', protein: 0.16, fat: 0.14, carbo: 0 },
          { id: 6, name: 'サバ', protein: 0.2, fat: 0.04, carbo: 0  },
          { id: 7, name: 'タイ', protein: 0.14, fat: 0.32, carbo: 0  },
       ]
    
      include ActiveHash::Associations
      has_many :menus
    
 end