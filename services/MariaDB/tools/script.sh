#!/bin/bash

service mysql start
mysql < /mydb.sql
#rm -f /mydb.sql