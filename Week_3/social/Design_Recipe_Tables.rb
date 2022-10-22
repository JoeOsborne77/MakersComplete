## 1. Extract nouns from the user stories or specification

    As a social network user,
    So I can have my information registered,
    I'd like to have a user account with my email address.

    As a social network user,
    So I can have my information registered,
    I'd like to have a user account with my username.

    As a social network user,
    So I can write on my timeline,
    I'd like to create posts associated with my user account.

    As a social network user,
    So I can write on my timeline,
    I'd like each of my posts to have a title and a content.

    As a social network user,
    So I can know who reads my posts,
    I'd like each of my posts to have a views.

Nouns: email address, username, timeline, posts, user-account, title, content, views


## 2. Infer the Table Name and Columns

| Record                | Properties          |
| --------------------- | ------------------  |
| user account          | email address, username
| timeline              | post_id, title, content, views

1. Name of the first table (always plural): `user_accounts` 

    Column names: `email address, username`

2. Name of the second table (always plural): `timeline_posts` 

    Column names: `post_id, title, content, views`

## 3. Decide the column types.

Remember to **always** have the primary key `id` as a first column. Its type will always be `SERIAL`.

# EXAMPLE:

Table: user_accounts
id: SERIAL
email_address: text
username: text

Table: timeline_posts
id: SERIAL
post_id: int
title: text
content: text
views: int
```

## 4. Decide on The Tables Relationship

To decide on which one, answer these two questions:

1. Can one TIMELINE_POST have many USERS? No << #foreign key
2. Can one  USER_ACCOUNT have many TIMELINE_POSTS? Yes


CREATE TABLE user_account (
  id SERIAL PRIMARY KEY,
email_address text
username text
);

CREATE TABLE timeline_posts (
  id SERIAL PRIMARY KEY,
  title text
  content text
  views int
-- The foreign key name is always {other_table_singular}_id
  artist_id int,
  constraint fk_artist foreign key(artist_id)
    references artists(id)
    on delete cascade
);

```

## 5. Create the tables.

```bash
psql -h 127.0.0.1 database_name < albums_table.sql
```