#!/bin/bash

for dir in dev_courses/courses/*/
do
	dir=${dir%*/}
	echo -e "running: addcourse ${dir##*/} --db-layout=sql_single"
#  	addcourse ${dir##*/} --db-layout=sql_single
	echo -e "running:  cp -rf /opt/webwork/courses_bates/${dir##*/}/* /opt/webwork/courses/${dir##*/}/*"
#	cp -rf /opt/webwork/courses_bates/${dir##*/}/* /opt/webwork/courses/${dir##*/}/*
done