# アプリケーション名

SkipカフェWebサイト


# アプリケーション概要

- ユーザーがWebサイトで店舗について知りたい情報を記載します。
- お問い合わせフォームからは指定したメールアドレスにお問い合わせ内容が送信されるよう実装します。
- 管理画面があり、管理画面からは店舗についてのお知らせの投稿が可能です。


# URL
http://54.95.225.125/

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
#### アクセスページ
- 営業日,営業時間,住所,電話番号,FAX番号,最寄駅,駐車場,GoogleMapを表示します。
#### お問い合わせページ
- 名前,URL,メールアドレス,確認用メールアドレス,件名,本文の入力欄を設けます。


# 実装した機能についての説明

## トップページ
[![Image from Gyazo](https://i.gyazo.com/3c1701833ea896bb43c7da5fd4062b94.gif)](https://gyazo.com/3c1701833ea896bb43c7da5fd4062b94)

<br>

## お知らせページ
[![Image from Gyazo](https://i.gyazo.com/bda3f1e6b5971f9161176dce839b91bb.gif)](https://gyazo.com/bda3f1e6b5971f9161176dce839b91bb)

<br>

## アクセスページ
[![Image from Gyazo](https://i.gyazo.com/81d1ff5c720181767fd0b148b7517e00.gif)](https://gyazo.com/81d1ff5c720181767fd0b148b7517e00)

<br>

## お問い合わせページ
[![Image from Gyazo](https://i.gyazo.com/ae6f6d3191493e4724a6eb215478785c.gif)](https://gyazo.com/ae6f6d3191493e4724a6eb215478785c)

<br>

## 管理画面
[![Image from Gyazo](https://i.gyazo.com/fc4c9d0d66a5dcae8d71d5c6c09d88f1.gif)](https://gyazo.com/fc4c9d0d66a5dcae8d71d5c6c09d88f1)

<br>

## 【管理画面】管理者の編集ができます。
[![Image from Gyazo](https://i.gyazo.com/c904eb85f89c4be2ee90c1b71b4f70d2.png)](https://gyazo.com/c904eb85f89c4be2ee90c1b71b4f70d2)

<br>

## 【管理画面】管理者一覧を閲覧できます。
[![Image from Gyazo](https://i.gyazo.com/7698b5b114acf69a1c16da5f2728e5e5.png)](https://gyazo.com/7698b5b114acf69a1c16da5f2728e5e5)

<br>

## 【管理画面】お知らせを投稿できます。
[![Image from Gyazo](https://i.gyazo.com/ad7b759c93073d5ec3548c4f3351718c.png)](https://gyazo.com/ad7b759c93073d5ec3548c4f3351718c)

<br>

## 【管理画面】お知らせ一覧を閲覧できます。
[![Image from Gyazo](https://i.gyazo.com/434fc02847436bc077841f6fa0cf921d.png)](https://gyazo.com/434fc02847436bc077841f6fa0cf921d)

<br>

## 【管理画面】お知らせ一を編集できます。
[![Image from Gyazo](https://i.gyazo.com/3338f58d4637629ed2d5a014094bfcb1.gif)](https://gyazo.com/3338f58d4637629ed2d5a014094bfcb1)

<br>

# 実装予定の機能
- 管理画面では、ユーザー関連をdeviseを用いて開発しており、現在はログインしている状態で新規管理者の追加が出来ないため、deviseをオーバーライドし、ログイン状態でも新規管理者登録ができるよう実装します。
- 管理画面にはGoogle Analyticsと連携し、アクセス情報を閲覧できるよう実装します。
- お知らせの公開日時を指定出来るよう実装します。
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

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| title       | string     | null: false                    |
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