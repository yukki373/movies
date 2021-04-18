# テーブル設計

## users テーブル

| Column                   | Type    | Options                  |
| ------------------------ | ------- | ------------------------ |
| nickname                 | string  | null: false              |
| email                    | string  | unique: true null: false |
| encrypted_password       | string  | null: false              |
| gender                   | integer | null: false              |
| birthday                 | data    | null: false              |
| movie_information        | string  |                          |
| self_introduction        | text    |                          |
| profile_image            | string  |                          |
