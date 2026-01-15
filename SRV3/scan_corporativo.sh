#!/bin/bash
LOG_FILE="/var/log/clamav/scan_relatorio.log"
DIR_TO_SCAN="/home /srv/empresa"

echo "--- Início da varredura: $(date) ---" >> $LOG_FILE
clamscan -r $DIR_TO_SCAN --infected --quiet >> $LOG_FILE
echo "--- Fim da varredura: $(date) ---" >> $LOG_FILE