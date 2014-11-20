#!/bin/bash

drush_extra_option='-v'
/home/webadmin/git-aliases-backup.drush/git-aliases-backup.drush --commit-message='[AUTO] Before updates.' --exclude-aliases=@6.x_sites,@7.x_sites,@all $drush_extra_option
/usr/bin/drush @all variable-set site_offline 1 --yes --no-color
/usr/bin/drush @all pm-update --security-only --yes --no-color
/usr/bin/drush @all variable-set site_offline 0 --yes --no-color
/home/webadmin/git-aliases-backup.drush/git-aliases-backup.drush --commit-message='[AUTO] After updates.' --exclude-aliases=@6.x_sites,@7.x_sites,@all $drush_extra_option

