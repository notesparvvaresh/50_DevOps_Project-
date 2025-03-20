LOG_DIR="/var/log"
DAYS=7

echo "Cleaning up log files in ${LOG_DIR} older than ${DAYS} days..."

# Find and remove files older than the specified number of days.
sudo find "$LOG_DIR" -type f -mtime +$DAYS -exec rm -f {} \;

echo "Cleanup complete."