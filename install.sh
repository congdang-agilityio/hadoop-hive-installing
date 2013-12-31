#! /bin/sh

# back to home folder (/home/user_name)
cd ~/

# download Hadoop 1.2.1 from official site
wget -c http://mirrors.digipower.vn/apache/hadoop/common/hadoop-1.2.1/hadoop-1.2.1.tar.gz

# untar the package.
tar -xvf hadoop-1.2.1.tar.gz

# download Hive 0.11.0 from official site
wget -c http://mirrors.digipower.vn/apache/hive/stable/hive-0.11.0.tar.gz

# untar the package
tar -xvf hive-0.11.0.tar.gz

# copy the environment file for set $HADOOP_HOME & $HIVE_HOME
sudo cp -rf hadoop-hive-installing/config/environment /etc/environment

# run source for set environment
source /etc/environment

# copy some config file for hadoop.
cp -rf hadoop-hive-installing/hadoop/* $HADOOP_HOME/conf/

# create hdfs folder
mkdir hdfs
sudo chmod -R 755 hdfs/

# format hadoop hdfs
$HADOOP_HOME/bin/hadoop namenode -format

#start hadoop
$HADOOP_HOME/bin/hadoop/start-all.sh
