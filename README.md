# テーブル設計

## users テーブル

| Column             | Type     | Options     |
| ------------------ | -------- | ----------- |
| nickname           | string   | null: false |
| email              | string   | null: false |
| encrypted_password | string   | null: false |
| first_name         | string   | null: false |
| last_name          | string   | null: false |

### Association

- has_many :news

## news テーブル

| Column      | Type   | Options     |
| ----------- | ------ | ----------- |
| title       | string | null: false |
| description | test   | null: false |

### Association

- belongs_to :user

## contacts テーブル

| Column         | Type   | Options                        |
| -------------- | ------ | ------------------------------ |
| name           | string | null: false                    |
| url            | string |                                |
| mail           | string | null: false                    |
| encrypted_mail | string | null: false                    |
| subject        | string | null: false                    |
| message        | text   | null: false                    |