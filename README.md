# erabu テーブル設計

## users テーブル

| Column             | Type       | Options                   |
| ------------------ | ---------- | ------------------------- |
| nickname           | string     | null: false               |
| email              | string     | null: false, unique: true |
| encrypted_password | string     | null: false               |

### Association

- has_many :groups

## groups テーブル

| Column     | Type       | Options           |
| ---------- | ---------- | ------------------|
| group_name | string     | null: false       |
| user       | references | foreign_key: true |

### Association

- belongs_to :user
- has_many :members

## members テーブル

| Column      | Type       | Options                        |
| ------------| ---------- | -------------------------------|
| member_name | string     | null: false                    |
| group       | references | null: false, foreign_key: true |

### Association

- belongs_to :group
- has_many :winnings, through: :winning_members

## winnings テーブル

| Column         | Type       | Options                        |
| ---------------| ---------- | ------------------------------ |
| winning_person | string     | null: false                    |
| member         | references | null: false, foreign_key: true |

### Association

- has_many :members, through: :winning_members

## winning_members テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| member  | references | null: false, foreign_key: true |
| winning | references | null: false, foreign_key: true |

### Association

- belongs_to :member
- belongs_to :winning
