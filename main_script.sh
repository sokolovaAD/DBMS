mount_dir=/u01/hyv71
db_name=lastroad
mkdir -p mount_dir   
chown oracle:oinstall mount_dir  
mkdir -p $mount_dir/$db_name/node01
mkdir -p $mount_dir/$db_name/node02
mkdir -p $mount_dir/$db_name/node03
mkdir -p $mount_dir/$db_name/node04
mkdir $mount_dir/$db_name/logs

export ORACLE_BASE=/u01/app/oracle
export ORACLE_HOME=$ORACLE_BASE/product/11.2.0/dbhome_1
export ORACLE_SID=sokolova_anastasia_p33022
export PATH=$PATH:$ORACLE_HOME/bin
export LD_LIBRARY_PATH=$ORACLE_HOME/lib
export NLS_LANG=American_America.UTF8
export NLS_SORT=AMERICAN
export NLS_DATE_LANGUAGE=AMERICAN
export NLS_DATE_FORMAT="DD.MM.YYYY"

cd $ORACLE_HOME/dbs   
orapwd file=auth_sokolova force=Y   

echo "
DB_NAME=$db_name
DB_BLOCK_SIZE=4096
SGA_TARGET=700M
" >> init$ORACLE_SID.ora   

sqlplus /nolog @instance.sql
sqlplus /nolog @db_maker.sql
sqlplus /nolog @view.sql
