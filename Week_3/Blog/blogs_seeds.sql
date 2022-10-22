CREATE TABLE blogs (
  id SERIAL PRIMARY KEY,   
  title text,
  content text
);

CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  comments text,
  name text,
  blog_id int,
  constraint fk_blog foreign key(blog_id)
    references blogs(id)
);