
### 실행방법

```
$ mkdir oracle
$ sh startup.sh install | uninstll | start | stop ...
$ sh startup.sh shell

```

### restore 방법
$ sh startup.sh shell
$ docker 서비스 구동후 약 10분정도 초기화진행(로그인 오류)
```
  $ cd /share && sh init.sh
  $ impdp system/oracle directory=sharedump dumpfile=nara.dmp full=y
```

