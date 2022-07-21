# README
# mine_sanpo
URL: https://mine-sanpo.herokuapp.com/

## アプリケーション概要
散歩した際に、撮影した景色、落とし物などの投稿。 

その日歩いた歩数の管理。 

気になるユーザーのフォロー。 

## Basic認証
ID:admin 

PASS:0113

## 利用について
ユーザーを新規登録すると、ユーザー名が表示され、写真とテキストの投稿、削除ができます。 

マイページから、歩数の管理をすることができ歩数をクリックすると歩数の一覧を見ることができます。 

投稿のユーザー名からユーザーページに飛ぶことができ、フォーローすることができる。自分がフォローした人は、マイページのフォーローから確認できます。 

## 製作背景
現代人の運動不足を解消し、習慣付して欲しい思い製作しました。 

また、散歩や登山などは、友人と行うことで良いコニュミけージョンツールになるという自分の実体験からの思いもあり製作しました。 

なので、運動にマイナスなイメージを持たず取り組んで欲しいためビューや配色にこだわりました。 

まだ、未実装であるがゲーム的要素を取り入れることで参入しやすくしていく予定です。 

## 要件定義
[要件定義のスプレットシート](https://docs.google.com/spreadsheets/d/1GhmgjHPcO_fbAHJPb_TEfYqrB5owMXZHWTDQNK9EAK0/edit?usp=sharing)

## DB設計
### users table
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

### posts table
|Column|Type|Options|
|------|----|-------|
|text|text|---|
|user|reference|null: false, foreign_key: true|

### association
- belongs_to :user

### relationships table
|Column|Type|Options|
|------|----|-------|
|following|integer|null: false|
|follower|integer|null: false|

### association 
- belongs_to :following, class_name :'User'
- belongs_to :follower, class_name :'User'

### actives table
|Column|Type|Options|
|------|----|-------|
|step|integer|---|
|user|reference|null: false, foreign_key: true|

### association
- belongs_to :user
