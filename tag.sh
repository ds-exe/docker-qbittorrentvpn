#!/usr/bin/env bash
set -e

git tag -s $1 -m "Release $1"
git push --tags
