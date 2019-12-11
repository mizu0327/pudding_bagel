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

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|email|string|null: false, add_index :users, unique: true|
|password|string|null: false|
|name|string|null: false|
|nickname|string|null: false|

### Association
- has_many :posts
- has_many :comments
- has_many :likes


## postsテーブル

|Column|Type|Options|
|------|----|-------|
|shop_name|text|null: false|
|shop_address|text|null: false|
|description|text||
|image|string|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- has_many :comments
- has_many :likes
- belongs_to :user


## recomenndsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true, unique: true|
|recommend_level|integer|null: false|
|content|text||

### Association
- belongs_to :post
- belongs_to :user


## likesテーブル

|Column|Type|Options|
|------|----|-------|
|post_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :post