# FTPMover
This simple script monitors when a file is uploaded to a select users directory and moves the uploaded file(s) from an ftp users home directory to another.

## Required Libraries/Repositories ##
* nohup
* inotifywait (inotify-tools)

## How to install ##
* Create a folder in your main `/` directory called `scripts`
* Clone the repo or paste in the ftpmover.sh script in the newly created `/scripts` folder
* Give the script execution permissions with `chmod +x /scripts/ftpmover.sh`

## How to daemonize/autorun ##
* With crontab you can make the script run at start to this we'll need to execute `crontab -e` and select our favorite text editor if one isn't already selected.
* Once in crontab paste the following into it:
```
@reboot sleep 30 && su - root -c 'nohup bash /scripts/ftpmover.sh &'
```
