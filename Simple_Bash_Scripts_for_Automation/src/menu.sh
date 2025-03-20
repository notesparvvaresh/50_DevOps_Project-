#!/bin/bash
# This menu-driven script allows you to select which administrative task to run.

while true; do
    echo "============================="
    echo " Administrative Tasks Menu"
    echo "============================="
    echo "1. Clean up log files"
    echo "2. Back up important data"
    echo "3. Update system"
    echo "4. Exit"
    read -p "Enter your choice [1-4]: " choice

    case $choice in
        1)
            ./cleanup_logs.sh
            ;;
        2)
            ./backup_data.sh
            ;;
        3)
            ./update_system.sh
            ;;
        4)
            echo "Exiting."
            exit 0
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac

    echo "Press Enter to continue..."
    read
done
