# linux-auto-dl
if you want something like IDM (Internet download manager) on Linux to download your files automatically over specific times with resume option, this is for you.

---------------

## How to use it?
1. apt install aria2c
2. set the crontab and adjust it (copy from crontab file and edit the path to point to auto-download.sh file)
3. setup a proxy on localhost:20171 (if you don't have it, remove the proxy setting in auto-download.sh)
4. edit the working directory in auto-download.sh file (recommend: directory path of auto-download.sh file)
5. edit timeout in auto-download.sh (to limit the download time)

--------------

## What are these files?
- *auto-download.sh* is the main file.
- *clear_output.sh* is for clearing the output.log file.
- *history.sh* is to save the links in links.history file. (run it before the auto-download.sh ends because it will clear the links file)
- *next* is an optional file to store future links to download.
- *crontab* is just to hold an crontab example you can use
- *links* is the file that holds the download links so the auto-download.sh file can read and execute.
- *output.log* is where the output and the logs will be stored.
- *links.history* is where you can store the links you downloaded by far.

---------------

## How it works?
- There is an auto-download.sh script that holds the main logic. (you can customize it to fix your requirements)
- This script uses aria2c library for download management purposes and a proxy to bypass the filtering that you should setup by yourself. (there is one, in my github account)
- By setting the crontab, the script will read the links (from links file) and starts downlaoding them one by one in order till the timeout occurs.
 if download ends before timeout, the links file will be deleted to prevent re-downloading the files.
- Aria2c has resume capabilities so if the timeout has been triggered, next time the download will continute.
 (It figures this out by looking at downloaded files and the last file which was interrupted, so don't remove the files till the end)
- Also there is a proxy setting that can be used to bypass the filtering.
- The output and the logs will be stored in output.log
