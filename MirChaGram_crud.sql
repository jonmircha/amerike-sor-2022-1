/* Reglas de Negocio - Sentencias CRUD */

/* 1. Crear _country_. */
INSERT INTO countries (country_name) VALUES ("Marley"), ("Liberio"), ("Paradise");
/* 1. Leer todos los _countries_. */
SELECT * FROM countries;

/* 1. Leer un _country_. */
SELECT * FROM countries WHERE country_name = "México";

/* 1. Actualizar un _country_. */
UPDATE countries SET country_name = "Isla Paraíso" WHERE country_id = 197;

/* 1. Eliminar _country_. */
DELETE FROM countries WHERE country_id = 200;


/* 1. Crear _user_. */
INSERT INTO users (user, user_date, email, password, phone, country) VALUES 
  ('@jonmircha', NOW(), 'jonmircha@gmail.com', SHA1('qwerty1234'),'5512345678', 117);

/* 1. Leer todos los _users_. */
SELECT * FROM users;
SELECT user, email  FROM users;
/* 1. Leer un _user_. */ 
SELECT * FROM users WHERE email = 'jonmircha@gmail.com';
SELECT user, email  FROM users WHERE user = '@jonmircha';

/* 1. Validar un _user_. */
SELECT * FROM users
  WHERE (user = '@jonmircha' OR email = 'jonmircha@gmail.com' OR phone = '5512345678') AND password = SHA1('qwerty1234');


/* 1. Actualizar datos del _user_. */
UPDATE users
  SET
    user_name = 'Jonathan MirCha',
    bio = "Bla bla bla.... blablabla",
    avatar = "https://jonmircha.com/img/jonmircha.jpg", 
    birthdate = "1984-05-23",
    genre = "Hombre"
  WHERE user = "@jonmircha";

/* 1. Actualizar _password_ de _user_. */
UPDATE users
  SET password = SHA1("nuevo password")
  WHERE user = "@jonmircha";

/* 1. Eliminar _user_. */
DELETE FROM users
  WHERE user = '@jonmircha';

INSERT INTO users ( user, user_date, email, phone, password )
  VALUES
    ( '@test1', NOW(), 'test1@gmail.com',"5512345679", SHA1('test1') ),
    ( '@test2', NOW(), 'test2@gmail.com', "5512345670",SHA1('test2') ),
    ( '@test3', NOW(), 'test3@gmail.com', "5512345677",SHA1('test3') );

/* Follows */

/* Crear follow de un user */
INSERT INTO follows ( follow_date, follow_user, user )
  VALUES
    ( NOW(), '@test1', '@jonmircha' ),
    ( NOW(), '@test2', '@jonmircha' ),
    ( NOW(), '@test3', '@jonmircha' ),
    ( NOW(), '@test3', '@test1' );

/* Contar el número de followers de un user */
SELECT COUNT(*) as followers FROM follows
  WHERE follow_user = '@test3';

/* Contar el número de followings de un user */
SELECT COUNT(*) AS followings FROM follows
  WHERE user = '@jonmircha';

/* Eliminar follow de un user */
DELETE FROM follows
  WHERE follow_id = 3
    AND user = '@jonmircha';



/* Posts */

/* Crear post */
INSERT INTO posts ( post_date, photo, user )
  VALUES
    ( NOW(), 'post1.jpg', '@jonmircha' ),
    ( NOW(), 'post2.jpg', '@jonmircha' ),
    ( NOW(), 'post3.jpg', '@jonmircha' ),
    ( NOW(), 'post4.jpg', '@test1' ),
    ( NOW(), 'post5.jpg', '@test2' ),
    ( NOW(), 'post6.jpg', '@test2' ),
    ( NOW(), 'post7.jpg', '@test3' );

/* Leer todos los posts */
SELECT * FROM posts;

/* Leer un post */
SELECT * FROM posts
  WHERE post_id = 1;

/* Leer los post de un user */
SELECT * FROM posts
  WHERE user = '@jonmircha';

/* Actualizar el plot de un post */
UPDATE posts
  SET plot = 'Descripción del Post 1'
  WHERE post_id = 1
    AND user = '@jonmircha';

/* Eliminar post */
DELETE FROM posts
  WHERE post_id = 3
    AND user = '@jonmircha';



/* Comments */

/* Crear comment en un post */
INSERT INTO comments ( comment_date, comment, post_id, user )
  VALUES
    ( NOW(), 'Comentario 1', 1, '@jonmircha' ),
    ( NOW(), 'Comentario 2', 1, '@test1' ),
    ( NOW(), 'Comentario 3', 1, '@jonmircha' ),
    ( NOW(), 'Comentario 4', 1, '@test1' ),
    ( NOW(), 'Comentario 5', 1, '@test2' ),
    ( NOW(), 'Comentario 6', 2, '@test3' ),
    ( NOW(), 'Comentario 7', 2, '@test2' ),
    ( NOW(), 'Comentario 8', 4, '@test1' ),
    ( NOW(), 'Comentario 9', 4, '@test2' );

/* Leer todos los comments de un post */
SELECT * FROM comments
  WHERE post_id = 1;

/* Leer un comment de un post */
SELECT * FROM comments
  WHERE comment_id = 1
    AND post_id = 1;

/* Contar el número de comments de un post */
SELECT COUNT(*) AS comments_number FROM comments
  WHERE post_id = 1;

/* Actualizar el comment de un post */
UPDATE comments
  SET comment = 'Comentario Actualizado 😎'
  WHERE comment_id = 1
    AND user = '@jonmircha';

/* Eliminar comment en un post */
DELETE FROM comments
  WHERE comment_id = 3
    AND user = '@jonmircha';



/* Hearts */

/* Crear heart de user en un post */
INSERT INTO hearts ( heart_date, post_id, user )
  VALUES
    ( NOW(), 1, '@jonmircha' ),
    ( NOW(), 1, '@test1' ),
    ( NOW(), 1, '@test2' ),
    ( NOW(), 1, '@test3' ),
    ( NOW(), 2, '@jonmircha' ),
    ( NOW(), 2, '@test1' ),
    ( NOW(), 4, '@test2' ),
    ( NOW(), 4, '@test3' );

/* Contar el número de hearts de un post */
SELECT COUNT(*) as likes FROM hearts
  WHERE post_id = 1;

/* Eliminar heart de user en un post */
DELETE FROM hearts
  WHERE heart_id = 5
    AND user = '@jonmircha';
