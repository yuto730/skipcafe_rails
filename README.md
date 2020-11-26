# テーブル設計

## users テーブル

| Column                | Type     | Options     |
| --------------------- | -------- | ----------- |
| nickname              | string   | null: false |
| email                 | string   | null: false |
| password_confirmation | string   | null: false |
| first_name            | string   | null: false |
| last_name             | string   | null: false |

### Association

- has_many :admins

## admins テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| title       | string     | null: false                    |
| description | test       | null: false                    |
| user        | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## contacts テーブル

| Column            | Type   | Options                        |
| ----------------- | ------ | ------------------------------ |
| name              | string | null: false                    |
| url               | string |                                |
| mail              | string | null: false                    |
| mail_confirmation | string | null: false                    |
| subject           | string | null: false                    |
| message           | text   | null: false                    |