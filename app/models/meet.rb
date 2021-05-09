class Meet < ActiveHash::Base
  self.data = [
      { id: 1, name: '--' },
      { id: 2, name: '鶏ムネ(皮あり)', protein: 0.19, fat: 0.1, carbo: 0 },
      { id: 3, name: '鶏ムネ(皮なし)', protein: 0.22, fat: 0.02, carbo: 0 },
      { id: 4, name: 'ささみ', protein: 0.23, fat: 0, carbo: 0 },
      { id: 5, name: '鶏もも', protein: 0.16, fat: 0.14, carbo: 0 },
      { id: 6, name: '牛モモ', protein: 0.2, fat: 0.04, carbo: 0  },
      { id: 7, name: '牛バラ', protein: 0.14, fat: 0.32, carbo: 0  },
      { id: 8, name: '豚ロース', protein: 0.19, fat: 0.19, carbo: 0  },
      { id: 9, name: '豚もも', protein: 0.20, fat: 0.1, carbo: 0  },
   ]

      include ActiveHash::Associations
      has_many :menus

end