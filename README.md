# README
#mine_sanpo
URL: https://mine-sanpo.herokuapp.com/
## users table
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|

### association 
- has_many :posts
- has_many :steps
- has_many :follow
- has_many :follow

## posts table
|Column|Type|Options|
|------|----|-------|
|text|text|---|
|user|reference|null: false, foreign_key: true|

### association
- belongs_to :user

## relationships table
|Column|Type|Options|
|------|----|-------|
|following|integer|null: false|
|follower|integer|null: false|

### association 
- belongs_to :following, class_name :'User'
- belongs_to :follower, class_name :'User'

## actives table
|Column|Type|Options|
|------|----|-------|
|step|integer|---|
|user|reference|null: false, foreign_key: true|

### association
- belongs_to :user
