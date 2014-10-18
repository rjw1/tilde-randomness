#!/usr/bin/bash
# script to get an omnios machine to the point that bundler works.
# install ruby 1.9.3
pkg install ruby-19
# pkg install will exit wth code 4 if there is nothing to do. 
# important if you feel like doing set -e

# install bundler 
# overide the default bindir to make sure it appears in a path.
# default seems to be platform dependant
# /opt/omni/bin/i386
gem install --bindir /opt/omni/bin bundler

