#!/usr/bin/env bash

# if any command inside script returns error, exit and return that error 
set -e

# magic line to ensure that we're always inside the root of our application,
# no matter from which directory we'll run script
# thanks to it we can just enter `./scripts/run-tests.bash`
cd "${0%/*}/.."

mkdir -p testlogs

nosetests --exe --with-xunit --xunit-file=`pwd`/testlogs/testlog.xml --with-coverage --cover-erase --cover-package=. --cover-html
coverage report --omit "*/migrations/*"


result=$(grep "failures" `pwd`/testlogs/testlog.xml | awk -F"\"" '{print $12}')

		if [ $result -ne 0 ]; 
		then
			echo "Unit Test failed"
 			exit 1
 		else
	 		echo "-----------------------"
 			echo "All Unit Test Passed"
 			echo "Committing the file in the repository"
	 		echo "-----------------------" 			 			
            exit 0
		fi
        






