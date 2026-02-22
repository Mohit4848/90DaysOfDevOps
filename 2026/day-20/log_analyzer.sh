#!/bin/bash
set -euo pipefail

# ----------------------------
# Input Validation
# ----------------------------

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <log_file_path>"
    exit 1
fi

LOG_FILE="$1"

if [ ! -f "$LOG_FILE" ]; then
    echo "Error: File '$LOG_FILE' does not exist."
    exit 1
fi

# ----------------------------
# Variables
# ----------------------------

DATE=$(date +%Y-%m-%d)
REPORT="log_report_${DATE}.txt"
TOTAL_LINES=$(wc -l < "$LOG_FILE")
ERROR_COUNT=$(grep -E -c "ERROR|Failed" "$LOG_FILE" || true)

# ----------------------------
# Console Output
# ----------------------------

echo "Analyzing log file: $LOG_FILE"
echo "Total lines: $TOTAL_LINES"
echo "Total errors (ERROR/Failed): $ERROR_COUNT"
echo

# ----------------------------
# Critical Events
# ----------------------------

echo "--- Critical Events ---"
CRITICAL_EVENTS=$(grep -n "CRITICAL" "$LOG_FILE" || true)

if [ -z "$CRITICAL_EVENTS" ]; then
    echo "No critical events found."
else
    echo "$CRITICAL_EVENTS"
fi

echo

# ----------------------------
# Top 5 Error Messages
# ----------------------------

echo "--- Top 5 Error Messages ---"

TOP_ERRORS=$(grep "ERROR" "$LOG_FILE" 2>/dev/null \
    | sed 's/^[^E]*ERROR[ :]*//' \
    | sort \
    | uniq -c \
    | sort -rn \
    | head -5 || true)

if [ -z "$TOP_ERRORS" ]; then
    echo "No ERROR entries found."
else
    echo "$TOP_ERRORS"
fi

# ----------------------------
# Generate Report File
# ----------------------------

{
    echo "Log Analysis Report"
    echo "===================="
    echo "Date: $DATE"
    echo "Log File: $LOG_FILE"
    echo "Total Lines: $TOTAL_LINES"
    echo "Total ERROR/Failed Count: $ERROR_COUNT"
    echo
    echo "--- Top 5 Error Messages ---"
    echo "$TOP_ERRORS"
    echo
    echo "--- Critical Events ---"
    echo "$CRITICAL_EVENTS"
} > "$REPORT"

echo
echo "Report generated: $REPORT"

# ----------------------------
# Optional Archive
# ----------------------------

ARCHIVE_DIR="archive"

if [ ! -d "$ARCHIVE_DIR" ]; then
    mkdir "$ARCHIVE_DIR"
fi

mv "$LOG_FILE" "$ARCHIVE_DIR/"
echo "Moved processed log file to $ARCHIVE_DIR/"
