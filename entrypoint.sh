#!/bin/sh -l

VERSION="$(git describe --tags --always)"

echo ::set-output name=version::$VERSION
