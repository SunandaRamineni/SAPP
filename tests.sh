#!/bin/sh

#bundle exec fastlane tests
/usr/bin/bundle --version
/usr/bin/bundle install
/usr/bin/bundle exec danger --fail-on-errors=true
