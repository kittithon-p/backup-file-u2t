#!/bin/bash
rm *.zip &&
zip moodle-$(date "+%b_%d_%Y_%H.%M.%S").zip /var/www/html/moodle &&
zip moodledata-$(date "+%b_%d_%Y_%H.%M.%S").zip /var/www/html/moodledata &&
git add . &&
git commit -am "BackUp-Moodle" &&
git remote add origin https://github.com/kkaarrdd/backup-file-u2t.git &&
git push -u origin main
