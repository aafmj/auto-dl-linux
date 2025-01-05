#!/bin/bash
# Author: AmirAli SBR

workdir=/opt/sbr/dl
log_dir=$workdir/output.log
download_dir=$workdir/downloaded
links_dir=$workdir/links
timeout=$((6*60*60))
#timeout=$((5))
proxy="http://localhost:20171"

GREEN="\e[32m"
CYAN="\e[36m"
RESET_COLOR="\e[0m"


echo -e "${CYAN}=============================================== Start Download 	at: `date` ===============================================${RESET_COLOR}" >> $log_dir

(http_proxy=$proxy https_proxy=$proxy timeout $timeout aria2c -i $links_dir -d $download_dir -j1 -c true && echo "" > $links_dir && echo -e "${GREEN}links cleared at: `date`${RESET_COLOR}") >> $log_dir 2>&1

echo -e "${CYAN}=============================================== End   Download 	at: `date` ===============================================${RESET_COLOR}" >> $log_dir
