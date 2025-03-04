sqlite3 name.db

----------------------
CREATE, ALTER, DROP
INSERT, UPDATE, DELETE
SELECT
----------------------

NULL, INTEGER, TEXT, REAL, BLOB

----------------------

NOT NULL
PRIMARY KEY
AUTOINCREMENT

---------------------

.open name.db
sqlite> attach "mydb.sqlite" as db1;


Команда	Описание
.show	Показывает текущие настройки заданных параметров
.databases	Показывает название баз данных и файлов
.quit	Выход из sqlite3
.tables	Показывает текущие таблицы
.schema	Отражает структуру таблицы
.header	Отобразить или скрыть шапку таблицы
.mode	Выбор режима отображения данных таблицы
.dump	Сделать копию базы данных в текстовом формате


CREATE TABLE table2 (
a INTEGER PRIMARY KEY NOT NULL,
b TEXT  UNIQUE NOT NULL,
c REAL NOT NULL);

CREATE TABLE table3 (
a INTEGER NOT NULL,
b TEXT  UNIQUE NOT NULL,
c REAL NOT NULL,
PRIMARY KEY(a));


CREATE TABLE IF NOT EXISTS TABLE table5 (
CREATE TEMP TABLE table6()


INSERT INTO table (name, email)
VALUES ('John', 'john@mail.com')


UPDATE table
SET email = 'example@mail.com'
WHERE name = 'John'


DELETE FROM table
WHERE id = 1


ALTER TABLE table
ADD COLUMN username TEXT;

ALTER TABLE table
RENAME TO tab;

-----------------------
import sqlite3 as sq

with sq.connect('name.db') as con:
    cur = con.cursor()

    cur.execute("""CREATE TABLE IF NOT EXISTS users  (
        user_id INTEGER PRIMARY KEY,
        name TEXT NOT NULL,
        sex INTEGER DEFAULT 1,
        old INTEGER,
        score INTEGER
        )""")

    cur.execute("DROP TABLE users")

    cur.execute("SELECT * FROM users WHERE score > 100 ORDER BY score DESC LIMIT
1 ")
    res = cur.fetchall()
    fetchone(), fetchmany(2)
---------------------------

select * from table where field < 100;
select * from table where field between 100 and 500;
= == < > <= >= != BETWEEN

AND OR NOT IN (NOT IN)

ORDER BY DESC
LIMIT 1
LIMIT 1 OFFSET 1
LIMIT 1, 1

LIKE 
    % - many 
    _ - one

IN (2, 5)

SELECT count(DISTINCT user_id) as count FROM games  
SELECT DISTINCT user_id as count FROM games  

SELECT name, score.games FROM games JOIN users ON games.user_id=users.id;

SELECT name, sum(score.games) as score FROM games JOIN users ON \
games.user_id=users.id;  

------------------------------
==============================

import sqlite3

con = sqlite3.connect('name.db')
cur = con.cursor()
cur.execute('CREATE TABLE IF NOT EXISTS users (one TEXT, '
                                              'two TEXT, ' 
                                              'three FLOAT)')

cur.execute('INSERT INTO users VALUES ("first", "second", "third")')
con.commit()

cur.close()
con.close()
-----------------------------
=============================

cur.execute('pragma table_info(table)')

-----------------------------

many_customers = [
                    ('John', 20, 1, 100),
                    ('Sarah', 21, 2, 200),
                    ('Tom', 22, 1, 100)
                 ]

cur.executemany('INSERT INTO users VALUES(?, ?, ?, ?)', many_customers)

-----------------------------

sqlite> select tbl_name from sqlite_master where type = 'table';
sqlite> select sql from sqlite_master where type = 'table' and tbl_name = 'users';

sqlite> PRAGMA foreign_keys;

PRAGMA foreign_keys = ON; 
PRAGMA foreign_keys = OFF; 

PRAGMA table_info('table_name');

----------------------------

ALTER TABLE child ADD COLUMN parent_id INTEGER REFERENCES parent(id);

