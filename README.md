# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## アプリ名
  cook-chat

## 概要
  このアプリは、料理の写真とレシピを投稿できるアプリです。  投稿にはいいねやコメントをすることができます

## 制作背景
  カリキュラムの復習を兼ねてアプリを作りたいと思いました。
  その中で、私は料理をするのが好きということもありcook-chatを制作することにしました。インスタグラムなどでも同じようなことができますが、料理だけのものを作りたいと思い制作しました。
## DEMO

* トップページのView
![cookchat top](https://user-images.githubusercontent.com/65294836/90475500-84d7c800-e162-11ea-9d17-134e27c21295.jpg)


* レシピの一覧
![recipe index](https://user-images.githubusercontent.com/65294836/90477794-fb76c480-e166-11ea-9b5c-2f3574c611d8.jpg)


* レシピの詳細
![recipe_show](https://user-images.githubusercontent.com/65294836/90496787-3be33c00-e181-11ea-9517-9c57512de24d.jpg)


* ユーザー一覧
![user](https://user-images.githubusercontent.com/65294836/90477241-02e99e00-e166-11ea-8187-6b8f54a345eb.jpg)


## 実装予定の内容
  まだ非同期通信ができていないので実装していきたいと思います。


## userテーブル
|Column|Type|Options|
|------|----|-------|
|user_name|string|null: false|
|email|string|null: false, unique: true|
|profile_image|string|null: false|
|profile|text||
|password|string|null: false|

### Association
- has_many :recipes
- has_many :comments
- has_many :likes

## recipeテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|title|string|null: false|
|body|text|null: false|
|image|string|null: false|

### Association
- belongs_to :user
- has_many :comments
- has_many :likes

## commentテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer||
|recipe_id|integer||
|text|text|null: false|

### Association
- belongs_to :user
- belongs_to :recipe

## likeテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer||
|recipe_id|integer||

### Association
- belongs_to :user
- belongs_to :recipe
