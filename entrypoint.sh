#!/bin/sh -l

DOCKERHUB_NAMESPACE="$1"
VERSION="$(git describe --tags --always)"
IMAGE="$DOCKERHUB_NAMESPACE/$(echo "$GITHUB_REPOSITORY" | cut -f 2 -d/ | sed 's/docker-//')"

echo "::set-output name=image::$IMAGE"
echo "::set-output name=version::$VERSION"
