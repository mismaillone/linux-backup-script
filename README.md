Bash script to automate backups

This Bash script automates the backup of important files on a Linux system, including the home directory, configuration files, and databases. You can modify the script to include your own files and directories to backup.

Getting started

To use this script, save it as a file (e.g., backup.sh) on your Linux system and make it executable by running chmod +x backup.sh. You can then run the script manually with ./backup.sh, or set up a cron job to run the script automatically at a specified interval.

Configuration

The script uses variables to configure various values that you can modify to suit your needs. These variables are:
•	BACKUP_DIR: The directory where backup files will be stored.

•	DATE: The date format to be used for the backup files.

•	LOG_FILE: The file where backup status will be logged.

•	HOME_DIR: The home directory to be backed up.

•	DATABASE_NAME: The name of the database to be backed up.

•	DATABASE_USER: The username to be used to access the database.

•	DATABASE_PASSWORD: The password to be used to access the database.

You can modify these variables to change the backup directory, date format, log file, home directory, or database information as needed.

Error handling

The script includes error handling for the database backup, which will print an error message to standard error output (stderr) and exit the script with a non-zero status code if the backup fails.

Usage 

./backup.sh

Compression

The script uses gzip compression to reduce the size of the backup files, making them easier to store and transfer.
Contributing
If you find a bug or have a feature request, please open an issue or submit a pull request.

License

This project is licensed under the MIT License - see the LICENSE file for details.


