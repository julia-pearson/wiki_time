DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS articles;
DROP TABLE IF EXISTS sections;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS sections_users;
DROP TABLE IF EXISTS articles_categories;

CREATE TABLE categories (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE articles (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  date_created DATE,
  -- do I need an edit data when it's by section?
  edit_date DATE
  -- all this will be set up with active record to show relationships
);

CREATE TABLE articles_categories (
  article_id REFERENCES articles(id),
  category_id REFERENCES categories(id)
);

CREATE TABLE sections (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  body TEXT,
  edit_date DATE
);

CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name VARCHAR
);

CREATE TABLE sections_users (
  section_id REFERENCES sections(id),
  user_id REFERENCES users(id)
);

CREATE TABLE comments (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  body TEXT,
  date_created DATE
);


