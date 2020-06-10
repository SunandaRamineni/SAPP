#!/bin/sh

#bundle exec fastlane tests
bundle --version
bundle update
bundle exec fastlane tests
bundle exec danger --fail-on-errors=true
