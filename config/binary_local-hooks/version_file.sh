#!/bin/sh
# Create live system version file

git describe --long --dirty --always > binary/live/live-system-version
