#!/bin/sh

#bundle exec fastlane tests
/usr/bin/bundle --version
/usr/bin/bundle install
fastlane tests
/usr/bin/bundle exec /usr/local/bin/danger --fail-on-errors=true
