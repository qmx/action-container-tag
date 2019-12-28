#!/bin/sh -l
set -euxo pipefail

VERSION="$(git describe --tags --always)"

echo "::set-output name=version::$VERSION"
