systemctl daemon-reload # перезагрузка конфигурации systemD
systemctl enable mysql-backup.timer # включаем таймер в автозагрузку
systemctl start mysql-backup.timer # запуск таймера

systemctl status mysql-backup.timer
systemctl list-timers
