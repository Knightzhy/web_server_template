#! /bin/sh
CWD=`dirname "${0}"` || exit 1
CWD=`cd "${CWD}"/.. && pwd` || exit 1
export LD_LIBRARY_PATH=${CWD}/lib
${CWD}/sbin/nginx -p ${CWD} -c etc/nginx.conf -s stop
