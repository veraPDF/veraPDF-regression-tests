#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

}

@test "--processes, The number of processes which will be used" {

    run verapdf/verapdf $BATS_TEST_DIRNAME/a1.pdf $BATS_TEST_DIRNAME/a2.pdf $BATS_TEST_DIRNAME/a3.pdf $BATS_TEST_DIRNAME/a4.pdf --processes 2 --format json

    [ "$status" -eq 1 ]
     assert_output --partial '"multiJob":false'
     refute_output --partial '"multiJob":true' # expected is not present when using --processes 

}
