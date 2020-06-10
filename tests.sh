#!/bin/sh

#bundle exec fastlane tests
bundle install
bundle exec danger --fail-on-errors=true
