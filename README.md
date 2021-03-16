# アプリケーション名

#### SkipカフェWebサイト

![fa1a8b33fc138eb13756a4eb7e85d063](https://user-images.githubusercontent.com/72351740/102185792-f2b7b480-3ef4-11eb-9ee1-ba5f9216e9c8.gif)
<br>


# アプリケーション概要

- ユーザーがWebサイトで店舗について知りたい情報を記載します。
- お問い合わせフォームでは、ユーザーが店舗にお問い合わせが出来るよう実装
- 店舗の管理者がお知らせを投稿出来るよう実装。


# URL

https://skipcafe.herokuapp.com/


# 洗い出した要件

## 機能

- 自作CMS
- お問い合わせ
- 各ページビュー

### 自作CMS

- 管理画面で管理者の編集が出来るよう実装。
[![Image from Gyazo](https://i.gyazo.com/f336096e63013f275f80e96dd836ac62.png)](https://gyazo.com/f336096e63013f275f80e96dd836ac62)
<br>

- 管理画面で管理者の一覧が閲覧が出来るよう実装。
[![Image from Gyazo](https://i.gyazo.com/f90291e126ba761e8cc56d41040a52f0.png)](https://gyazo.com/f90291e126ba761e8cc56d41040a52f0)
<br>

- 管理者はお知らせを投稿が出来るよう実装。
[![Image from Gyazo](https://i.gyazo.com/54edd949f06d76160048c666757272f7.gif)](https://gyazo.com/54edd949f06d76160048c666757272f7)
<br>

- お知らせの一覧を閲覧が出来るよう実装。
[![Image from Gyazo](https://i.gyazo.com/d2680e3e5661dd46ec9c4cfeda130fdd.png)](https://gyazo.com/d2680e3e5661dd46ec9c4cfeda130fdd)
<br>

- お知らせを編集が出来るよう実装。
[![Image from Gyazo](https://i.gyazo.com/a18e189ed12e1ffb1d6b3f6764d03927.gif)](https://gyazo.com/a18e189ed12e1ffb1d6b3f6764d03927)
<br>

### お問い合わせ

- お問い合わせ内容が指定したメールアドレスに送信されるよう実装。
[![Image from Gyazo](https://i.gyazo.com/0935820955fa06c2ff7f5e518c625c3b.gif)](https://gyazo.com/0935820955fa06c2ff7f5e518c625c3b)
<br>

### 各ページビュー

#### ▼ヘッダー
- スマートフォンで閲覧した際にナビゲーションをハンバーガーメニューに変更します。
#### ▼トップページ
- ヘッダー,ファーストビュー,キャッチコピー,店舗の紹介動画,店舗のこだわり,お知らせ,フッターを表示します。
#### ▼お知らせページ
- お知らせ一覧ページでは最新のお知らせ8件を表示し、ページネーション機能を設けます。
- お知らせ詳細ページでは、お知らせ詳細のほかに、最新のお知らせ2件を表示します。
#### ▼アクセスページ
- 営業日,営業時間,住所,電話番号,FAX番号,最寄駅,駐車場,GoogleMapを表示します。
#### ▼お問い合わせページ
- 名前,URL,メールアドレス,確認用メールアドレス,お問い合わせ内容の入力欄を設けます。


# データベース設計

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

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| title    | string     | null: false                    |
| start_on | date       | null: false                    |
| user     | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## contacts テーブル

| Column            | Type   | Options                        |
| ----------------- | ------ | ------------------------------ |
| name              | string | null: false                    |
| url               | string |                                |
| mail              | string | null: false                    |
| mail_confirmation | string | null: false                    |
| message           | text   | null: false                    |