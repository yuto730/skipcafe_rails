# アプリケーション名

SkipカフェWebサイト


# アプリケーション概要

- ユーザーがWebサイトで店舗について知りたい情報を記載します。
- お問い合わせフォームからは指定したメールアドレスにお問い合わせ内容が送信されるよう実装します。
- 管理画面があり、管理画面からは店舗についてのお知らせの投稿が可能です。


# URL
https://skipcafe.herokuapp.com/

# テスト用アカウント

# 目指した課題解決

以前のWebサイトには、必要最低限の情報しか載っておらず、ユーザーの集客になるWebサイトではありませんでした。<br>
そのため、Webサイトを閲覧したユーザーが実際に訪れたいと思ってもらえるようにデザイン性を意識し、開発しました。<br>
また、デザインの方向性についてはクライアントと擦り合わせて作成しました。


# 洗い出した要件

## 機能

- 自作CMS
- お問い合わせ
- 各ページビュー

## 目的
- 管理者のユーザー登録を実装します。
- 店舗の管理者がお知らせを投稿出来るよう実装します。
- 管理画面にはGoogle Analyticsと連携し、アクセス情報を閲覧できるよう実装します。
- お問い合わせフォームでは、ユーザーが店舗にお問い合わせが出来るよう実装します。
- ユーザーが店舗について知りたい情報や店舗のこだわりを紹介出来るよう実装します。

## 詳細

### 自作CMS

- 管理画面で管理者の登録が出来るよう実装します。
- 管理画面で管理者の編集が出来るよう実装します。
- 管理画面で管理者の一覧が閲覧出来るよう実装します。
- 管理者はお知らせを投稿出来るよう実装します。
- お知らせの投稿には、画像,タイトル,詳細が必須です。
- お知らせの公開日時を指定出来るよう実装します。
- お知らせの一覧を閲覧出来るよう実装します。
- お知らせを編集出来るよう実装します。
- 管理画面のトップページには、Google Analyticsと連携をし、アクセス情報を確認出来るよう実装します。

### お問い合わせ

- お問い合わせ内容が指定したメールアドレスに送信されるよう実装します。

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


# 実装した機能についての説明

## トップページ
![fa1a8b33fc138eb13756a4eb7e85d063](https://user-images.githubusercontent.com/72351740/102185792-f2b7b480-3ef4-11eb-9ee1-ba5f9216e9c8.gif)

<br>

## お知らせページ
[![Image from Gyazo](https://i.gyazo.com/e0e072ff7e89647a1721e1fb5d19e47f.gif)](https://gyazo.com/e0e072ff7e89647a1721e1fb5d19e47f)

<br>

## アクセスページ
![81d1ff5c720181767fd0b148b7517e00](https://user-images.githubusercontent.com/72351740/100831948-27198280-34aa-11eb-8444-c9601d099e0c.gif)

<br>

## お問い合わせページ
[![Image from Gyazo](https://i.gyazo.com/0935820955fa06c2ff7f5e518c625c3b.gif)](https://gyazo.com/0935820955fa06c2ff7f5e518c625c3b)

<br>

## 管理画面
[![Image from Gyazo](https://i.gyazo.com/b4f5f6af63ada974627dd0841c467c8b.png)](https://gyazo.com/b4f5f6af63ada974627dd0841c467c8b)

<br>

## 【管理画面】管理者の編集ができます。
[![Image from Gyazo](https://i.gyazo.com/f336096e63013f275f80e96dd836ac62.png)](https://gyazo.com/f336096e63013f275f80e96dd836ac62)

<br>

## 【管理画面】管理者一覧を閲覧できます。
[![Image from Gyazo](https://i.gyazo.com/f90291e126ba761e8cc56d41040a52f0.png)](https://gyazo.com/f90291e126ba761e8cc56d41040a52f0)

<br>

## 【管理画面】お知らせを投稿できます。
[![Image from Gyazo](https://i.gyazo.com/54edd949f06d76160048c666757272f7.gif)](https://gyazo.com/54edd949f06d76160048c666757272f7)

<br>

## 【管理画面】お知らせ一覧を閲覧できます。
[![Image from Gyazo](https://i.gyazo.com/d2680e3e5661dd46ec9c4cfeda130fdd.png)](https://gyazo.com/d2680e3e5661dd46ec9c4cfeda130fdd)

<br>

## 【管理画面】お知らせ一を編集できます。
[![Image from Gyazo](https://i.gyazo.com/a18e189ed12e1ffb1d6b3f6764d03927.gif)](https://gyazo.com/a18e189ed12e1ffb1d6b3f6764d03927)

<br>

# 実装予定の機能
- 管理画面では、ユーザー関連をdeviseを用いて開発しており、現在はログインしている状態で新規管理者の追加が出来ないため、deviseをオーバーライドし、ログイン状態でも新規管理者登録ができるよう実装します。
- 管理画面にはGoogle Analyticsと連携し、アクセス情報を閲覧できるよう実装します。
- お問い合わせ内容が指定したメールアドレスに送信されるよう実装します。（現在はDBへの保存のみ完了しております。）


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