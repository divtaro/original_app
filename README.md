# テーブル設計

## users テーブル

| Column              | Type        | Options                        |
| ------------------- | ----------- | ------------------------------ |
| user_name           | string      | null: false, unique: true      |
| email               | string      | null: false, unique: true      |
| encrypted_password  | string      | null: false                    |

### Association

-has_many :posts
-has_many :comments

## posts テーブル

| Column              | Type        | Options                        |
| ------------------- | ----------- | ------------------------------ |
| title               | string      | null: false, unique: true      | 
| shooting_month_id   | integer     | null: false                    | 
| impression_point    | text        | null: false                    | 
| parking_presence_id | integer     |                                | 
| parking_Fee_id      | integer     |                                | 
| nearest_station     | string      |                                | 
| walking_time_id     | integer     |                                | 
| shooting_location   | text        | null: false                    | 
| other_information   | text        |                                | 
| latitude            | float       | null: false                    |
| longitude           | float       | null: false                    | 
| user                | references  | null: false, foreign_key: true | 

### Association

-belongs_to :user
-has_many   :comments

## commentsテーブル

| Column             | Type        | Options                         |
| ------------------ | ----------- | ------------------------------- |
| text               | text        | null: false, foreign_key: true  | 
| post               | references  | null: false, foreign_key: true  | 
| user               | references  | null: false, foreign_key: true  | 

### Association

-belongs_to :post
-belongs_to :user