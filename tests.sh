#!/bin/sh

bundle update
bundle exec fastlane tests
bundle exec danger --fail-on-errors=true
