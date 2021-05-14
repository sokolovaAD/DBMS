CONNECT / AS sysdba;
CREATE DATABASE lastroad;
    USER SYS IDENTIFIED BY admin
    USER SYSTEM IDENTIFIED BY admin
    LOGFILE
        GROUP 1
            ('/u01/hyv71/lastroad/logs/redo01.log')
            SIZE 8M,
        GROUP 2
            (''/u01/hyv71/lastroad/logs/redo02.log')
            SIZE 8M
    MAXLOGFILES 3
    MAXLOGMEMBERS 3
    MAXDATAFILES 128
    CHARACTER SET UTF8
    EXTENT MANAGEMENT LOCAL
    DATAFILE
        '/u01/hyv71/lastroad/node04/etapa26.dbf’
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED
        sysaux DATAFILE
        '/u01/hyv71/lastroad/node03/toq16.dbf’
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED,
        '/u01/hyv71/lastroad/node04/rep8.dbf’
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED
    DEFAULT TABLESPACE users DATAFILE
        '/u01/hyv71/lastroad/node02/acinoxo180.dbf’
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED
    DEFAULT TEMPORARY TABLESPACE temp TEMPFILE
        '/u01/qvs94/leftfish/temp01.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED
    UNDO TABLESPACE undotbs DATAFILE
        '/u01/qvs94/leftfish/undotbs01.dbf'
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED;
CREATE TABLESPACE DRY_BLUE_HAIR
    DATAFILE
        '/u01/hyv71/lastroad/node04/drybluehair01.dbf’
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED,
        ‘/u01/hyv71/lastroad/node03/drybluehair02.dbf’
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED,
        ‘/u01/hyv71/lastroad/node01/drybluehair04.dbf’
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED,
        '/u01/hyv71/lastroad/node01/drybluehair03.dbf’
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED;

CREATE TABLESPACE SICK_BLACK_IDEA
    DATAFILE
        '/u01/hyv71/lastroad/node01/sickblackidea01.dbf’
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED,
        ‘/u01/hyv71/lastroad/node03/sickblackidea02.dbf’
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED,
        ‘/u01/hyv71/lastroad/node04/sickblackidea03.dbf’
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED,
        '/u01/hyv71/lastroad/node04/sickblackidea04.dbf’
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED;

CREATE TABLESPACE DARK_BLACK_CITY
    DATAFILE
        ‘/u01/hyv71/lastroad/node01/darkblackcity01.dbf’
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED,
        ‘/u01/hyv71/lastroad/node02/darkblackcity02.dbf’
        SIZE 20M
        REUSE
        AUTOEXTEND ON
        MAXSIZE UNLIMITED;
 
