## CS50 Introduction to Databases with SQL + CS50X Week 8, 9

Exercises in this repo come from 
- [CS50 SQL Course 2024](https://cs50.harvard.edu/sql/)
- [CS50X Intro to CS 2025](https://cs50.harvard.edu/x/)

### Course Structure
#### CS50
0. Querying
1. Relating
2. Designing
3. Writing
4. Viewing
5. Optimizing
6. Scaling

#### CS50X
8. HTML, CSS, Javascript
9. Flask

### Useful `sqlite3` Commands
```
# to display results in a columnar format.
.mode column

# to show the column names at the top
.headers on

# to display the execution time of queries
.timer on

# to turn off the timer
.timer off
```

### MySQL
```
# to install mysql with brew
brew install mysql

# to start mysql now and restart at login:
brew services start mysql

# to connect run:
mysql -u root
```

## PostgreSQL
```
# to install postgresql with brew
brew install postgresql

# to start postgresql@14 now and restart at login:
brew services start postgresql@14

# to connect run:
psql postgresql://postgres@127.0.0.1:5432/postgres
```

