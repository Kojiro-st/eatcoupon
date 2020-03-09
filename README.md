# Eatcoupon　DB設計
## customersテーブル
|Column|Type|Options|
|------|----|-------|
|username|string|null: false|
|email|string|null: false|
|password|string|null: false|

### Association
- has_many :shops,  through:  :customers_shops

## shopsテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|username|string|null: false|
|information|text||
|password|string|null: false|

### Association
- has_many :customers,  through:  :customers_shops

## Messagesテーブル
|column|Type|Options|
|------|----|-------|
|body|text||
|image|string||
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

## Association
- belongs_to :customer
- belongs_to :shop

## customers_shopsテーブル
|Column|Type|Options|
|------|----|-------|
|customer_id|integer|null: false, foreign_key: true|
|shop_id|integer|null: false, foreign_key: true|


### Association
- belongs_to :customer
- belongs_to :shop