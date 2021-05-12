set -v
cd /share
export NLS_LANG=korean_korea.UTF8
echo exit | sqlplus "system/oracle" @create.sql

