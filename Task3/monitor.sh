#!/bin/bash

# Configuration
CONTAINER_NAME="my-container"
LOG_DIR="/opt/container-monitor/logs"
LOG_FILE="$LOG_DIR/monitor_$(date +%Y-%m-%d).log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

# Create log directory if not exists
mkdir -p "$LOG_DIR"

# Check if container is running
if ! docker ps --format '{{.Names}}' | grep -q "^${CONTAINER_NAME}$"; then
    echo "[$TIMESTAMP] WARNING: Container '$CONTAINER_NAME' is not running!" >> "$LOG_FILE"
    exit 1
fi

# Get CPU and Memory stats
STATS=$(docker stats --no-stream --format "{{.CPUPerc}}|{{.MemUsage}}|{{.MemPerc}}" "$CONTAINER_NAME")

# Parse stats
CPU=$(echo "$STATS" | cut -d'|' -f1)
MEM_USAGE=$(echo "$STATS" | cut -d'|' -f2)
MEM_PERC=$(echo "$STATS" | cut -d'|' -f3)

# Write to log file
echo "============================================" >> "$LOG_FILE"
echo "Timestamp  : $TIMESTAMP"                     >> "$LOG_FILE"
echo "Container  : $CONTAINER_NAME"                >> "$LOG_FILE"
echo "CPU Usage  : $CPU"                           >> "$LOG_FILE"
echo "Memory     : $MEM_USAGE"                     >> "$LOG_FILE"
echo "Memory %   : $MEM_PERC"                      >> "$LOG_FILE"
echo "============================================" >> "$LOG_FILE"

# Print to terminal
echo "[$TIMESTAMP] CPU: $CPU | Memory: $MEM_USAGE | Mem%: $MEM_PERC"
