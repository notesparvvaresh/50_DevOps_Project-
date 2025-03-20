SOURCE_DIR="/home/user/important_data"
BACKUP_DIR="/backup"
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_FILE="backup_${TIMESTAMP}.tar.gz"


if [! -d "$SOURCE_DIR"]; then 
    echo "Source directory $SOURCE_DIR does not exist. Exiting."
    exit 1
fi

mkdir -p "$BACKUP_DIR"
echo "Creating backup of ${SOURCE_DIR}..."
tar -czf "${BACKUP_DIR}/${BACKUP_FILE}" "$SOURCE_DIR"
echo "Backup created at ${BACKUP_DIR}/${BACKUP_FILE}"
