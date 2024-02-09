PATTERN='veraPDF_MF'

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    SAVEIFS=$IFS
    IFS=$(echo -en "\n\b")

    echo "Files to test: " >&3
    shopt -s globstar
    for x in $(ls $BATS_TEST_DIRNAME/**/$PATTERN*.pdf); do
        printf "%s\n" $x >&3
    done
    echo -e "\n" >&3
}

teardown() {
    IFS=$SAVEIFS
    echo -e "Done ... \n" >&3
}

@test 'Metadata check. Expected status: NoAction, Expected result: No action' {

    echo "Going ahead ... " >&3

    for x in $(ls $BATS_TEST_DIRNAME/**/$PATTERN*.pdf); do

        printf "%s\n" $x >&3
        run verapdf/verapdf $x --fixmetadata

        echo -e "status $(basename $x): $status \n" >&3
        [ "$status" -eq 0 ] || [ "$status" -eq 1 ]
        assert_output --partial 'metadataRepairReport status="No Action"'
    done
}
