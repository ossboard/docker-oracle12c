#!/bin/bash

export userid=$(whoami)
if [ ${userid} == 'root' ]
then
  echo "root 권한으로 실행할 수 없습니다"
  exit 0
fi
export T_USAGE="Usage: $0 {start | stop | restart | status | log | shell | install| uninstall  }"
export T_HOME=`pwd -P`

cd ${T_HOME}

fn_start() {
  docker-compose start
}

fn_stop() {
  docker-compose stop
}

fn_status() {
  docker-compose ps
}

fn_log() {
  echo "fn_log"
}

fn_shell() {
 docker exec -it nara30-oracle /bin/bash
}


fn_install() {
  docker-compose up -d
  fn_shell
}

fn_uninstall() {
  docker-compose down
}

case $1 in
  start) fn_start ;;
  stop) fn_stop ;;
  restart)
      fn_stop
      sleep 3
      fn_start ;;
  status) fn_status ;;
  log) fn_log ;;
  shell) fn_shell ;;
  install) fn_install ;;
  uninstall) fn_uninstall ;;
  *) echo ${T_USAGE} ;;
esac
exit 0
