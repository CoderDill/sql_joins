-- CREATE TABLE posts (
--     title TEXT,
--     username TEXT,
--     link TEXT
-- )

CREATE TABLE subreddits (
    id SERIAL,
    name VARCHAR(15),
    description TEXT,
    subscribers INTEGER,
    is_private BOOLEAN
)