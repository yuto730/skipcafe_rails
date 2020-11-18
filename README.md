# テーブル設計

## users テーブル

<!-- | Column             | Type     | Options     |
| ------------------ | -------- | ----------- |
| nickname           | string   | null: false |
| email              | string   | null: false |
| encrypted_password | string   | null: false |
| first_name         | string   | null: false |
| last_name          | string   | null: false |
| first_name_kana    | string   | null: false |
| last_name_kana     | string   | null: false |
| birthday           | date     | null: false | -->

### Association

<!-- - has_many :news -->

## news テーブル

<!-- | Column        | Type      | Options                        |
| ------------- | --------- | ------------------------------ |
| name          | string    | null: false                    |
| description   | text      | null: false                    |
| category_id   | integer   | null: false                    |
| status_id     | integer   | null: false                    |
| shipping_id   | integer   | null: false                    |
| prefecture_id | integer   | null: false                    |
| day_id        | integer   | null: false                    |
| price         | integer   | null: false                    |
| user          | reference | null: false, foreign_key: true | -->

### Association

<!-- - belongs_to :user -->

## contacts テーブル

| Column         | Type   | Options                        |
| -------------- | ------ | ------------------------------ |
| name           | string | null: false                    |
| url            | string |                                |
| mail           | string | null: false                    |
| encrypted_mail | string | null: false                    |
| subject        | string | null: false                    |
| message        | text   | null: false                    |