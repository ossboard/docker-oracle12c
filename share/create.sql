CREATE TABLESPACE NARA30 DATAFILE 'NARA30.DBF'  SIZE 1000M AUTOEXTEND ON;
CREATE USER nara30 IDENTIFIED BY nara30 DEFAULT TABLESPACE NARA30 TEMPORARY TABLESPACE TEMP;
GRANT ALL PRIVILEGES TO nara30;
create directory sharedump as '/share';
