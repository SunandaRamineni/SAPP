#!/bin/sh

#bundle exec fastlane tests
bundle --version
bundle update
bundle exec fastlane tests
#/usr/bin/bundle exec /usr/local/bin/danger
