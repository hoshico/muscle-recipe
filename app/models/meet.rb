class Meet < ActiveHash::Base
  self.data = [
      { id: 1, name: '--' },
      { id: 2, name: '鶏ムネ(皮あり)', multiple_p:0.19, multiple_f:0.1, multiple_c: 0 },
      { id: 3, name: '鶏ムネ(皮なし)', multiple_p:0.22, multiple_f:0.02, multiple_c: 0 },
      { id: 4, name: 'ささみ', multiple_p:0.23, multiple_f:0, multiple_c: 0 },
      { id: 5, name: '鶏もも', multiple_p:0.16, multiple_f:0.14, multiple_c: 0 },
      { id: 6, name: '牛モモ', multiple_p:0.2, multiple_f:0.04, multiple_c: 0  },
      { id: 7, name: '牛バラ', multiple_p:0.14, multiple_f:0.32, multiple_c: 0  },
   ]

      include ActiveHash::Associations
      has_many :menus

   end