TIMESTAMP=$(date +'%F') # получаем текущую дату
BACKUP_DIR='<путь до директории, где будут сохраняться дампы>'
MYSQL_USER='<имя пользователя>'
MYSQL_PASSWORD='<пароль пользователя>'
DATABASE_NAME='<название базы данных>'

mkdir -p '$BACKUP_DIR/$TIMESTAMP' # создаем директорию
mysqldump -u $MYSQL_USER -p$MYSQL_PASSWORD $DATABASE_NAME > '$BACKUP_DIR/$TIMESTAMP/$DATABASE_NAME-$TIMESTAMP.sql' # создаем дамп
find '$BACKUP_DIR;' -type d -mtime +28 -exec rm -rf {} \; # удаление бекапов старше 4 недель