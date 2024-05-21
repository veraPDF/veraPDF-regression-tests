#!/usr/bin/env bash

_common_setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    PATH="$PROJECT_ROOT/tools/test_helper/:$PATH"

    load "$PROJECT_ROOT/bats-support/load.bash"
    load "$PROJECT_ROOT/bats-assert/load.bash"
}
