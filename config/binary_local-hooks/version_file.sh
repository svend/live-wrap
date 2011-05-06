#!/bin/sh
# Create version file

git describe --long --dirty --always > binary/version-file
