#!/bin/bash

LOGFILE=/KatherineWeller/noaa_forecast_data/noaa-logs/git.log
TIMESTAMP=$(date +"%D %T")

echo -e "\n\n-------------- $TIMESTAMP --------------" 2>&1 | tee -a $LOGFILE

echo -e "\n\nPull the R Script from GitHub:\n" 2>&1 | tee -a $LOGFILE

cd /KatherineWeller/noaa_forecast_data/noaa-source #https://github.com/KatherineWeller/noaa_forecast_data
git pull 2>&1 | tee -a $LOGFILE
echo -e "\n" 2>&1 | tee -a $LOGFILE
for i in *.R; do Rscript $i 2>&1 | tee -a $LOGFILE; done

echo -e "\n\nGitHub Server:\n" 2>&1 | tee -a $LOGFILE

cd /KatherineWeller/noaa_forecast_data/NOAA #https://github.com/KatherineWeller/noaa_forecast_data
#git pull &>> ~/data/SCCData/noaa-logs/git.log
git add *.*
git commit -m "$TIMESTAMP: Git Backup" 2>&1 | tee -a $LOGFILE
/"Macintosh HD"/Users/CarterMattox/Documents/katts_folder/FLARE-scripts/git-retry.sh push -f 2>&1 | tee -a $LOGFILE

cd /KatherineWeller/noaa_forecast_data/NOAA/FCRE #https://github.com/KatherineWeller/noaa_forecast_data
#git pull &>> ~/data/SCCData/noaa-logs/git.log
git add .
git commit -m "$TIMESTAMP: Git Backup" 2>&1 | tee -a $LOGFILE
/"Macintosh HD"/Users/CarterMattox/Documents/katts_folder/FLARE-scripts/git-retry.sh push -f 2>&1 | tee -a $LOGFILE

cd /KatherineWeler/noaa_forecast_data/NOAA/SUGG #https://github.com/KatherineWeller/noaa_forecast_data
#git pull &>> ~/data/SCCData/noaa-logs/git.log
git add .
git commit -m "$TIMESTAMP: Git Backup" 2>&1 | tee -a $LOGFILE
/"Macintosh HD"/Users/CarterMattox/Documents/katts_folder/FLARE-scripts/applications/git-retry.sh push -f 2>&1 | tee -a $LOGFILE

cd /KatherineWeller/noaa_forecast_data/NOAA/SUNP #https://github.com/KatherineWeller/noaa_forecast_data
#git pull &>> ~/data/SCCData/noaa-logs/git.log
git add .
git commit -m "$TIMESTAMP: Git Backup" 2>&1 | tee -a $LOGFILE
/"Macintosh HD"/Users/CarterMattox/Documents/katts_folder/FLARE-scripts/git-retry.sh push -f 2>&1 | tee -a $LOGFILE

echo -e "\n\nPush the Logs to GitHub:\n" 2>&1 | tee -a $LOGFILE

cd /KatherineWeller/noaa_forecast_data/noaa-logs #https://github.com/KatherineWeller/noaa_forecast_data
git add .
git commit -m "$TIMESTAMP: Logs" 2>&1 | tee -a $LOGFILE
/"Macintosh HD"/Users/CarterMattox/Documents/katts_folder/FLARE-scripts/git-retry.sh push -f 2>&1 | tee -a $LOGFILE
git add .
git commit -m "$TIMESTAMP: Logs" 2>&1 | tee -a $LOGFILE
/"Macintosh HD"/Users/CarterMattox/Documents/katts_folder/FLARE-scripts/git-retry.sh push -f 2>&1 | tee -a $LOGFILE
