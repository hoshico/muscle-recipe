# Name
 
『マッスルレシピ』
 
# Overview
 料理の味や見た目で今日の献立を探すようなレシピ投稿アプリケーションではなく、
 
 コンビニで商品を手にし、パッケージの成分表を確認できる様に、レシピごとの「タンパク質/脂質/炭水化物の量」を確認することが出来るようなレシピ投稿アプリケーション。

# DEMO
トップ画面
![トップ画面](https://user-images.githubusercontent.com/77495217/118112450-f9087900-b41f-11eb-901c-dbbeaa18e78f.png)

レシピ詳細画面
![詳細画面](https://user-images.githubusercontent.com/77495217/118121344-4f7bb480-b42c-11eb-943e-078e44d135ab.png)

 
# Features
レシピ投稿画面にてメイン食材を登録することでPFC(タンパク質/脂質/炭水化物)が自動で算出され表示されます

https://user-images.githubusercontent.com/77495217/118120945-ae8cf980-b42b-11eb-8f0f-66185381f94a.mov


 

 
# Requirement
 
"hoge"を動かすのに必要なライブラリなどを列挙する
 
* huga 3.5.2
* hogehuga 1.0.2
 
# Installation
 
Requirementで列挙したライブラリなどのインストール方法を説明する
 
```bash
pip install huga_package
```
 
# Usage
 
DEMOの実行方法など、"hoge"の基本的な使い方を説明する
 
```bash
git clone https://github.com/hoge/~
cd examples
python demo.py
```
 
# Note
 
注意点などがあれば書く
 
# Author
 
作成情報を列挙する
 
* 作成者
* 所属
* E-mail
 
# License
ライセンスを明示する
 
"hoge" is under [MIT license](https://en.wikipedia.org/wiki/MIT_License).
 
社内向けなら社外秘であることを明示してる
 
"hoge" is Confidential.










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
