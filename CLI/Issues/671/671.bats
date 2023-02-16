#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/671
@test "#671: Validation error with a scanned document" {

    run verapdf/verapdf $BATS_TEST_DIRNAME/GHOSTSCRIPT-688716-0.pdf -x iccProfile

    [ "$status" -eq 1 ]
    assert_output --partial '<featureReports failedJobs="0">1</featureReports>'

}
