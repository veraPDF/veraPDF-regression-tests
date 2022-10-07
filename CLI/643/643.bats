setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/643
@test "#643: Crash on running feature extraction, 01_07 Papers.pdf" {
    run echo $(verapdf/verapdf -x $BATS_TEST_DIRNAME/'01_07 Papers.pdf')
    assert_output --partial 'totalJobs="1" failedToParse="0"'
}

# https://github.com/veraPDF/veraPDF-library/issues/643
@test "#643: Crash on running feature extraction, 14_01_08_ayrshire.pdf" {
    run echo $(verapdf/verapdf -x $BATS_TEST_DIRNAME/14_01_08_ayrshire.pdf)
    assert_output --partial 'totalJobs="1" failedToParse="0"'
}

# https://github.com/veraPDF/veraPDF-library/issues/643
@test "#643: Crash on running feature extraction, 14_01_08_lanarkshire.pdf" {
    run echo $(verapdf/verapdf -x $BATS_TEST_DIRNAME/14_01_08_lanarkshire.pdf)
    assert_output --partial 'totalJobs="1" failedToParse="0"'
}

# https://github.com/veraPDF/veraPDF-library/issues/643
@test "#643: Crash on running feature extraction, 260308lacmfinalsubmission.pdf" {
    run echo $(verapdf/verapdf -x $BATS_TEST_DIRNAME/260308lacmfinalsubmission.pdf --format html)
    assert_output --partial '<html> <head> <META http-equiv="Content-Type" content="text/html; charset=UTF-8"> <title>Validation Report</title> </head>'
    assert_output --partial 'Compliance: </td><td class="invalid"> Failed'
}
