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

| Column                 | Type          | Options           |
| ---------------------- | ------------- | ----------------- |
| title                  | string        | null: false       |
| recipe1                | text          | null: false       |
| recipe2                | text          |                   |
| recipe3                | text          |                   |
| recipe4                | text          |                   |
| user                   | references    | foreign_key: true |


### Association

- has_one :food_stuffs
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

| Column           | Type          | Options           |
| ---------------- | ------------- | ----------------- |
| main1_name       | string        | null: false       | 
| main1_quantity   | string        | null: false       |
| main1_protein    | integer       | null: false       |
| main2_name       | string        |                   | 
| main2_quantity   | string        |                   |
| main2_protein    | integer       |                   |
| main3_name       | string        |                   | 
| main3_quantity   | string        |                   |
| main3_protein    | integer       |                   |
| menu             | references    | foreign_key: true |

### Association

- belongs_to :menu
