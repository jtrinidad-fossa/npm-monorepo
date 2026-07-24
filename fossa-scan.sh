#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

FOSSA="./fossa"

# Release group aggregation (fossa-test-monorepo / 1.0.0) requires a
# full-access API key -- the current key is push-only and can't manage
# release groups. Add these back once a full-access key is available:
#   --release-group-name "fossa-test-monorepo" \
#   --release-group-release "1.0.0"

"$FOSSA" analyze -c .fossa.yml \
  --project fossa-test-root

"$FOSSA" analyze -c packages/api-service/.fossa.yml \
  --project fossa-test-api-service

"$FOSSA" analyze -c packages/cli-tool/.fossa.yml \
  --project fossa-test-cli-tool

"$FOSSA" analyze -c packages/shared-utils/.fossa.yml \
  --project fossa-test-shared-utils

"$FOSSA" analyze -c packages/web-client/.fossa.yml \
  --project fossa-test-web-client
