#!//bin/bash

/systpl/systpl.py /systpl/supervisord.conf.tmpl > /etc/supervisor/supervisord.conf
/systpl/systpl.jinja.py /systpl/cli-php.ini.tmpl > /etc/php/7.2/cli/php.ini
/systpl/systpl.jinja.py /systpl/newrelic.ini.tmpl > /etc/php/7.2/mods-available/newrelic.ini
/systpl/systpl.jinja.py /systpl/run-heap-qmgr.sh.tmpl > /run-heap-qmgr.sh
chmod 775 /run-heap-qmgr.sh

exec supervisord -c /etc/supervisor/supervisord.conf
