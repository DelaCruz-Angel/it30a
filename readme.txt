C: \it30a

1. CREATE DATABASE <database_name>;
2. SHOW DATABASES;
3. CONNECT <database_name>;
4. CREATE TABLE <table_name_in plural> ();
5. INSERT INTO <table_name_in_plural>
(column)
VALUES(values);

Utility Commands
\! c1s
mysqldump -u root -p --databases library_db > C: \it30a\08182026_library_db.sql

mysqldump -u root -p --databases library_db > "D: \it30a\%date:~-4%_%date:~4,2%_%date:~7,2%_%time:~0,2%_%time:~3,2%_%time:~6,2%_library_db.sql"