#!bash

gitsource='-b paper-upload https://github.com/plugins-zander/OneManager'

OneManagerPath=`cd $(dirname $0);pwd -P`
cd ${OneManagerPath}

git clone ${gitsource}
\mv -b config.php OneManager-php/
\mv -b OneManager-php/* ./
\mv -b OneManager-php/.[^.]* ./
rm -rf *~
rm -rf .[^.]*~
rm -rf OneManager-php
chmod 666 config.php

