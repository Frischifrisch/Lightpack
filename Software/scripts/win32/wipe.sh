#!/bin/bash
# VS Clean functionality doesn't cover many of the hacky things we added like secretly copying files etc
# This includes the sln and vcxproj's which VS doesn't know are generated
# This script should clean all temporary and final products of the build process (on windows)
# call this from $repo/Software
rm -rf src/bin
rm -rf src/stuff
rm -rf lib
rm -rf */debug
rm -rf */release
rm -rf dist_windows/content/*.dll
rm -rf dist_windows/content/*.exe
rm -rf dist_windows/content/platforms
rm -rf dist_windows/content/translations
rm -f Lightpack.sln
rm -rf */*.vcxproj