CREATE TABLE
  IF NOT EXISTS user (
    id SERIAL PRIMARY KEY NOT NULL UNIQUE,
    username TEXT UNIQUE,
    password_hash TEXT NOT NULL
  );

CREATE TABLE
  IF NOT EXISTS image (
    id SERIAL PRIMARY KEY NOT NULL UNIQUE,
    user_id INT REFERENCES user (id) NOT NULL,
    image_path TEXT NOT NULL,
    image_url TEXT NOT NULL
  );
