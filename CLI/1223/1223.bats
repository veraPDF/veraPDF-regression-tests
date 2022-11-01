bats_require_minimum_version 1.5.0

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    cp -r verapdf $BATS_TEST_TMPDIR
    cp -r $BATS_TEST_DIRNAME/exit-status.sh $BATS_TEST_TMPDIR
    cd $BATS_TEST_TMPDIR
}

# https://github.com/veraPDF/veraPDF-library/issues/1223
# https://github.com/veraPDF/veraPDF-apps/blob/integration/tests/exit-status.sh
@test "#1223: exit-status.sh OOM test fails (verapdf-apps)" {

    out=$($BATS_TEST_TMPDIR/exit-status.sh $BATS_TEST_TMPDIR)
    run echo $out

    assert_output --partial 'RESULTS ======='
    assert_output --partial '- single pass exit code: 0 (expected 0)'
    assert_output --partial '- single fail exit code: 1 (expected 1)'
    assert_output --partial '- batch pass exit code: 0 (expected 0)'
    assert_output --partial '- batch fail exit code: 1 (expected 1)'
    assert_output --partial '- batch mixed exit code: 1 (expected 1)'
    assert_output --partial '- bad params exit code: 2 (expected 2)'
    assert_output --regexp '( - out of memory exit code:)\s*(1|3)\s*\(expected 3 or 1\)'
    assert_output --partial '- parse error exit code: 7 (expected 7)'
    assert_output --partial 'PASSED'
}
