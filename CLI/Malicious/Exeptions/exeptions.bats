#!/usr/bin/env bats
exeption_file=""

#Creating an associative array
typeset -Ag exeptions_status_9
exeptions_status_9[01-dos-01-infinite-loop-A4.pdf]="Exception: Caught unexpected exception during parsing caused by exception: Page tree loop found"
exeptions_status_9[A4-pages-tree-loop-complex.pdf]="Exception: Caught unexpected exception during parsing caused by exception: Page tree loop found"
exeptions_status_9[PDFBOX-4623-0.pdf]="Exception: Caught unexpected exception during parsing caused by exception: Object has stream length value which references to its own object key(object key = 3 0 obj, offset = 74)"
exeptions_status_9[GHOSTSCRIPT-700434-0.pdf]="Exception: Caught unexpected exception during parsing caused by exception: Error while parsing object : 2 0 caused by exception: Object number 2 should be object stream, but in fact it is null"


#Creating an associative array
typeset -Ag exeptions_status_7
exeptions_status_7[deflate-bomb-10GB-xref.pdf]="Exception: Couldn't parse stream caused by exception: End of file is reached"
exeptions_status_7[deflate-bomb-trivial-10GB-xref.pdf]="Exception: Couldn't parse stream caused by exception: End of file is reached"
exeptions_status_7[sumatrapdf-448-0.pdf]="Exception: Couldn't parse stream caused by exception: Exception during parsing xref stream(offset = 78) caused by exception:"
exeptions_status_7[weblinks.pdf]="Exception: Couldn't parse stream caused by exception: End of file is reached"

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Malicious/Resources/UnhandledExceptions"

    SAVEIFS=$IFS
    IFS=$(echo -en "\n\b")

    cp -r verapdf/* $BATS_TEST_TMPDIR
    assert [ ${#exeptions_status_9[@]} != 0 ]
    assert [ ${#exeptions_status_7[@]} != 0 ]
}

teardown() {
    IFS=$SAVEIFS
    if ! [ -n "$BATS_TEST_COMPLETED" ]; then
        echo -e "\n  Test fail with a file: $exeption_file" >&3
    fi
    echo -e "Done ..." >&3
}

@test "Malicious check. Exceptions...status 9" {
    for exeption_file in "${!exeptions_status_9[@]}"; do
        echo "Checking file: $exeption_file" >&3
        run verapdf/verapdf $FILE_PATH/$exeption_file

        [ "$status" -eq 9 ]
        assert_output --partial 'batchSummary totalJobs="1" failedToParse="0" encrypted="0" outOfMemory="0" veraExceptions="1"'
        assert_output --partial ${exeptions_status_9[$exeption_file]}
    done
}

@test "Malicious check. Exceptions...status 7" {

    for exeption_file in "${!exeptions_status_7[@]}"; do
        echo "Checking file: $exeption_file" >&3
        run verapdf/verapdf $FILE_PATH/$exeption_file

        [ "$status" -eq 7 ]
        assert_output --partial 'batchSummary totalJobs="1" failedToParse="1" encrypted="0" outOfMemory="0" veraExceptions="0"'
        assert_output --partial ${exeptions_status_7[$exeption_file]}
    done
}
