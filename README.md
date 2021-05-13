# タイトル
 
『マッスルレシピ』
 
# 概要
 料理の味や見た目で今日の献立を探すようなレシピ投稿アプリケーションではなく、
 
 コンビニで商品を手にし、パッケージの成分表を確認できる様に、レシピごとの「タンパク質/脂質/炭水化物の量」を確認することが出来るようなレシピ投稿アプリケーション。

# デモ

・トップ画面
![トップ画面](https://user-images.githubusercontent.com/77495217/118112450-f9087900-b41f-11eb-901c-dbbeaa18e78f.png)

・レシピ詳細画面
![詳細画面](https://user-images.githubusercontent.com/77495217/118121344-4f7bb480-b42c-11eb-943e-078e44d135ab.png)

 
# 特徴

・レシピ投稿画面にてメイン食材を登録することでPFC(タンパク質/脂質/炭水化物)が自動で算出され表示されます

https://user-images.githubusercontent.com/77495217/118120945-ae8cf980-b42b-11eb-8f0f-66185381f94a.mov

 
# 使用技術
 
* ruby 2.6.5
* Rails 6.0.3.6
* mysql  Ver 14.14

 
# URL
 
# テスト用アカウント

# 機能一覧

- ユーザー登録機能、ログイン機能(devise)
- 投稿一覧機能
- 投稿機能
   - 画像登録(ActiveStorage)
   - PFC自動算出機能(JavaScript)
- 投稿詳細機能
   - 円グラフ表示機能(chartkick)
   - いいね機能(JavaScript)
 


# 制作背景

私自身食習慣を見直し、「タンパク質が多く、糖質の低い」食事メニューを定番化させたことで一年間で７キロ体重を落とした経験があります。
今でも食事を定番化させること、成分の把握できているものを極力毎日食べることがダイエットの答えであると考えています。
「体重を落としたい。」「理想的なカラダを作りたい。」、そう考える方にとって普段の食生活を改善するヒントになればと思い作成しました。




 
# 





# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :menus
- has_many :favorites

## menus テーブル

| Column                 | Type          | Options                        |
| ---------------------- | ------------- | ------------------------------ |
| title                  | string        | null: false                    |
| recipe                 | text          | null: false                    |
| user                   | references    | null: false, foreign_key: true |


### Association

- has_one :food_stuff
- belongs_to :user

## favorites テーブル

| Column        | Type          | Options           |
| ------------- | ------------- | ----------------- |
| user          | references    | foreign_key: true |
| menu          | references    | foreign_key: true |


### Association

- belongs_to :user
- belongs_to :menu

## food_stuffs テーブル

| Column           | Type          | Options                        |
| ---------------- | ------------- | ------------------------------ |
| meet_id          | integer       |                                | 
| meet_quantity    | integer       |                                |
| fish_id          | integer       |                                |
| fish_quantity    | integer       |                                | 
| vege_id          | integer       |                                |
| vege_quantity    | integer       |                                |
| dairy_id         | integer       |                                | 
| dairy_quantity   | integer       |                                |
| total_p          | integer       |                                |
| total_f          | integer       |                                |
| total_c          | integer       |                                |
| etc_food         | integer       | null: false                    |
| menu_id          | references    | null: false, foreign_key: true |

### Association

- belongs_to :menu
