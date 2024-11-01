#!/usr/bin/env bash
LATEST_VERSION=$(cargo search zizmor --limit 1 | grep -oP '^zizmor = "\K[^"]+')
echo "version=${LATEST_VERSION}" >>"$GITHUB_OUTPUT"
