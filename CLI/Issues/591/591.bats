#!/usr/bin/env bats

RULE_FAIL='3'
RULE_PASS='67'

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/591
@test "#591: Specifying --passed or --success options in combination with verbosity -v (--verbose), --passed" {

    out=$(echo $(verapdf/verapdf $BATS_TEST_DIRNAME/68_1_fail.pdf -v --passed --format text))

    run echo $(echo $out | grep -w -o FAIL | wc -w)
    assert_output --partial $RULE_FAIL

    run echo $(echo $out | grep -w -o PASS | wc -w)
    assert_output --partial $RULE_PASS
}

# https://github.com/veraPDF/veraPDF-library/issues/591
@test "#591: Specifying --passed or --success options in combination with verbosity -v (--verbose), --success" {

    out=$(echo $(verapdf/verapdf $BATS_TEST_DIRNAME/68_1_fail.pdf -v --success --format text))

    run echo $(echo $out | grep -w -o FAIL | wc -w)
    assert_output --partial $RULE_FAIL

    run echo $(echo $out | grep -w -o PASS | wc -w)
    assert_output --partial $RULE_PASS
}
