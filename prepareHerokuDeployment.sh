#!/bin/bash

function get-dart-dependencies {
   echo "get-dart-dependencies"
   pub get
}

function test-dart-sources {
   echo "test-dart-sources"
   dart test/model_tests.dart
}



get-dart-dependencies
test-dart-sources


