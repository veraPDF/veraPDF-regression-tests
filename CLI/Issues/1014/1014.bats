#!/usr/bin/env bats
setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

}
#https://github.com/veraPDF/veraPDF-library/issues/1014
#see also Options/stdin/stdin.bats
@test "#1014: Result xml when reading from stdin is different from invocation with file name" {

    run echo $(cat $FILE_PATH/a.pdf | verapdf/verapdf)

    refute_output --partial 'expecting an EOF'

    assert_output --partial '<name>STDIN</name>'
    assert_output --partial 'batchSummary totalJobs="1"'
    assert_output --partial 'failedToParse="0"'
    assert_output --partial 'veraExceptions="0"'

}
