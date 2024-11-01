#!/usr/bin/env bash
if ! command -v zizmor &>/dev/null; then
	echo "Installing zizmor version ${LATEST_VERSION}"
	cargo install zizmor
else
	CURRENT_VERSION=$(zizmor --version | cut -d' ' -f2)
	if [ "$CURRENT_VERSION" != "${LATEST_VERSION}" ]; then
		echo "Updating zizmor from ${CURRENT_VERSION} to ${LATEST_VERSION}"
		cargo install zizmor --force
	else
		echo "zizmor ${CURRENT_VERSION} is up to date"
	fi
fi
