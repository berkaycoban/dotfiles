alias l="ls -la"
alias c="clear"

# brew run on m1
alias brew="arch -arm64 brew"

# php
alias php-start="brew services start php@7.4"
alias php-stop="brew services stop php@7.4"
alias php-restart="brew services restart php@7.4"

# symfony aliases
alias create-web="composer create-project symfony/website-skeleton"
alias create-api="composer create-project symfony/skeleton"

# mysql aliases
alias mysql-start="mysql.server start"
alias mysql-stop="mysql.server stop"
alias mysql-restart="mysql.server restart"
alias mysql-status="mysql.server status"
alias mysql-login="mysql -u berkaycoban -p"

# postgresql aliases
alias psql-start="pg_ctl -D /usr/local/var/postgres start"
alias psql-stop="pg_ctl -D /usr/local/var/postgres stop"

# mongodb
alias mongodb-start="brew services start mongodb-community"
alias mongodb-status="brew services list"
alias mongodb-stop="brew services stop mongodb-community"
alias mongod="sudo mongod --dbpath /Users/berkaycoban/data/db"

# docker aliases
# alias dr="docker run --rm -i -t $name"

# npx alias
# alias npxser="npx http-server -p 4000 ."

# gcc -fopenmp >> for parallel programming
# alias gcc-parallel="gcc -Xpreprocessor -fopenmp ${file_name} -lomp"

# Get Weather
alias weather="curl wttr.in/Izmir"