-- Connecting Node to Mysql

/*
>>>> Installing MySQL package:
        npm install mysql
>>>> Fixing error while running app.js
        Link: https://stackoverflow.com/questions/50093144/mysql-8-0-client-does-not-support-authentication-protocol-requested-by-server

        Solution:
            Open mysql command line.
                ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'your_new_password';
                FLUSH PRIVILEGES;
>>>> Official documnentation for mysql:
        https://github.com/mysqljs/mysql
>>>>
*/

-- Create users table.
CREATE TABLE users(
        email VARCHAR(255) PRIMARY KEY,
        created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO users (email) VALUES('hello@gmail.com'),('danny@gmail.com');