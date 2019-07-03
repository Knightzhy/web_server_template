#! /bin/sh
CWD=`dirname "${0}"` || exit 1
CWD=`cd "${CWD}"/.. && pwd` || exit 1
export LD_LIBRARY_PATH=${CWD}/lib
${CWD}/sbin/php-fpm -c ${CWD}/etc/php.ini -p ${CWD} -g run -y ${CWD}/etc/php-fpm.conf
