-- Installation

/*
>>>> SQL can be used in MySQL commandline and MySQL workbench.
>>>> Installing MySQL workbench on windows.
        Link: https://dev.mysql.com/downloads/installer/
>>>> Using MySQL Command line.
        Open MySQL command line client from the start menu.
        Enter root password.
        Connect to a database in command line client.
            USE sakila;
            SELECT * FROM sakila;
        Quitting from command line client.
            quit;

>>>> Using MySQL Workbench.
        Use the lightning icon to run selected or entire query.
        Use the lightning icon with <I> to execute the statement under the keyboard cursor.

>>>> Installation Mac OS:
        Installing the MySQL server.
                Go to https://dev.mysql.com/downloads/mysql/
                Select MacOS in the drop-down.
                Select:  macOS 12 (ARM, 64-bit), DMG Archive
                Launch the installer.
        Installing the mysql workbench.
                Go to https://dev.mysql.com/downloads/workbench/
                Select MacOS in the drop-down.
                Select: macOS (x86, 64-bit), DMG Archive
                Launch the installer.
        Changing default root password.
                Run this command in the mysql command line.
                ALTER USER 'root@localhost' IDENTIFIED BY 'newpasswordhere'
>>>> Adding mysql command line client to path variable in Mac OS.
        open ~/.bash_profile OR .zshrc(If you are using zsh)
        Add the below line in the file.
                export PATH=${PATH}:/usr/local/mysql/bin
>>>> How to log into mysql command line client.
        mysql -u root -p
        Enter the password for the root user.
        To quit the mysql command line client.
                quit;
>>>> Other alternative database client for mysql.
        DbGate
                Link: https://dbgate.org/
        DbGate works with other databases.
*/
