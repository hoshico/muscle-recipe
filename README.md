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

## likes テーブル

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
