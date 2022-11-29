
PATTERN='veraPDF_MF'

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    SAVEIFS=$IFS
    IFS=$(echo -en "\n\b")

    cp -r verapdf/* $BATS_TEST_TMPDIR
    cp -r $BATS_TEST_DIRNAME/* $BATS_TEST_TMPDIR

    echo "Files to test: " >&3
    shopt -s globstar
    for x in $(ls $BATS_TEST_TMPDIR/**/$PATTERN*.pdf); do
        printf "%s\n" $x >&3
    done
    echo -e "\n" >&3
}

teardown() {
    IFS=$SAVEIFS
    echo -e "Done ... \n" >&3
}

@test 'Metadata check. Expected status: ID Removed, Expected result: Metadata fixes' {
    echo "Going ahead ... " >&3

    for x in $(ls $BATS_TEST_TMPDIR/**/$PATTERN*.pdf); do

        printf "%s\n" $x >&3
        run verapdf/verapdf $x --fixmetadata

        echo -e "status $(basename $x): $status \n" >&3
        [ "$status" -eq 1 ]
        assert_output --partial 'metadataRepairReport status="ID Removed"'

        run $BATS_TEST_TMPDIR/verapdf $BATS_TEST_TMPDIR/veraFixMd_$(basename $x)
        echo "$BATS_TEST_TMPDIR/veraFixMd_$(basename $x)" >&3

        echo -e "status veraFixMd_$(basename $x): $status \n" >&3
        [ "$status" -eq 1 ]
        assert_output --partial 'clause="6.7.11" testNumber="1" status="failed" passedChecks="0" failedChecks="1"'
    done
}
