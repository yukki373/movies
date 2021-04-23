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

### Association

- has_many :reactions
- has_many :chat_room_users

## reactions テーブル

| Column                   | Type       | Options                       |
| ------------------------ | ---------- | ------------------------------|
| from_user_id             | references | null: false foreign_key: true |
| to_user_id               | references | null: false foreign_key: true |
| status                   | integer    | null: false                   |

### Association

- belongs_to :user

## chat_room_users テーブル

| Column                   | Type       | Options                       |
| ------------------------ | ---------- | ------------------------------|
| chat_room_id             | references | null: false foreign_key: true |
| user_id                  | references | null: false foreign_key: true |

### Association

- belongs_to :user
- belongs_to :chat_room

## chat_rooms テーブル

| Column                   | Type       | Options                       |
| ------------------------ | ---------- | ------------------------------|
|                          |            |                               |

### Association

- mas_many :chat_room_users

## chat_messages テーブル

| Column                   | Type       | Options                       |
| ------------------------ | ---------- | ------------------------------|
| content                  | text       | null: false                   |
| user_id                  | references | null: false foreign_key: true |
| chat_room_id             | references | null: false foreign_key: true |

### Association

- belongs_to :user

