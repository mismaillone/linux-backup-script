#!/bin/bash

# Define variables for configurable values
BACKUP_DIR="/path/to/backup/directory"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
LOG_FILE="/var/log/backup.log"
HOME_DIR="/home/user"
DATABASE_NAME="database_name"
DATABASE_USER="username"
DATABASE_PASSWORD="password"

# Create backup directory if it does not exist
if [ ! -d "$BACKUP_DIR" ]; then
  mkdir -p "$BACKUP_DIR"
fi

# Backup home directory
tar -czf "$BACKUP_DIR/home-$DATE.tar.gz" "$HOME_DIR"

# Backup configuration files
tar -czf "$BACKUP_DIR/etc-$DATE.tar.gz" "/etc"

# Backup databases
if ! mysqldump -u "$DATABASE_USER" -p"$DATABASE_PASSWORD" "$DATABASE_NAME" | gzip > "$BACKUP_DIR/database-$DATE.sql.gz"; then
  echo "Error: Failed to backup database $DATABASE_NAME" >&2
  exit 1
fi

# Write backup status to log file
echo "Backup completed on $DATE" >> "$LOG_FILE"
