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

## userテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|name|string|null: false|
|Email|string|null: false|
|password|string|null: false|

### Assosiation
- has_many :groups, through:  :groups_users
- has_many :Messages

## groupテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|nessages_id|integer|null: false, foreign_key: true|
|groupname|string|null: false|

### Association
- has_many :messages
- belong_to :user, through:  :groups_users

## groups_Usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belong_to :group
- belong_to :user

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|message|string|null: false|
|img|BLOB||

### Association
- belong_to :user
- belong_to :group