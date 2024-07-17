
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

@test 'Metadata check. Expected status: Repair successful, Expected result: Add metadata' {

    echo "Going ahead ... " >&3

    for x in $(ls $BATS_TEST_TMPDIR/**/$PATTERN*.pdf); do

        printf "%s\n" $x >&3
        
        FLAVOUR=auto
        
        if [[ $x == *"ua1"* ]]; then
                FLAVOUR=ua1
        fi
        
        run $BATS_TEST_TMPDIR/verapdf $x --fixmetadata --flavour $FLAVOUR

        echo "status $(basename $x): $status" >&3
        [ "$status" -eq 1 ]
        assert_output --partial 'metadataRepairReport status="Repair successful"'

        run $BATS_TEST_TMPDIR/verapdf $BATS_TEST_TMPDIR/veraFixMd_$(basename $x)
        echo "$BATS_TEST_TMPDIR/veraFixMd_$(basename $x)" >&3

        echo -e "status veraFixMd_$(basename $x): $status \n" >&3
        [ "$status" -eq 0 ]
        assert_output --partial 'isCompliant="true"'

    done
}
