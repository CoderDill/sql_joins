-- CREATE TABLE posts (
--     title TEXT,
--     username TEXT,
--     link TEXT
-- )

CREATE TABLE subreddits (
    id SERIAL,
    name VARCHAR(15) NOT NULL,
    description TEXT,
    subscribers INTEGER CHECK (subscribers > 0) DEFAULT 1,
    is_private BOOLEAN DEFAULT false
)

CREATE TABLE users (
    id SERIAL,
    username VARCHAR(15) UNIQUE NOT NULL,
    password VARCHAR(20) NOT NULL
)