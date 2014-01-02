#!/bin/bash

function get-dart-dependencies {
	echo "get-dart-dependencies"
	pub get || { echo 'get-dart-dependencies failed' ; exit 1; }
}

function test-dart-sources {
	echo "test-dart-sources"
	dart test/model_tests.dart || { echo 'test-dart-sources failed' ; exit 1; }
}

function dart-2-js {

	echo "dart-2-js"
	clientDir="web/client"
	clientFiles=`grep -r "main()" $clientDir   | grep -v packages |  awk -F":" '{print $1}' | awk -F"/" '{print $3}' `

	for clientFile  in $clientFiles
	do
            echo "dart2js on $clientDir/$clientFile"
	    dart2js "$clientDir/$clientFile" -o "$clientDir/$clientFile.js"
	done
}

get-dart-dependencies 
test-dart-sources
dart-2-js

