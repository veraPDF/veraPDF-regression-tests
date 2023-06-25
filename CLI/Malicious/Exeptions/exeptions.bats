#!/usr/bin/env bats
exeption_file=""

#Creating an associative array
typeset -Ag exeptions
exeptions[01-dos-01-infinite-loop-A4.pdf]="Exception: Caught unexpected exception during parsing caused by exception: Page tree loop found"
exeptions[A4-pages-tree-loop-complex.pdf]="Exception: Caught unexpected exception during parsing caused by exception: Page tree loop found"
exeptions[deflate-bomb-10GB-xref.pdf]="Exception: Couldn't parse stream caused by exception: End of file is reached"
exeptions[deflate-bomb-trivial-10GB-xref.pdf]="Exception: Couldn't parse stream caused by exception: End of file is reached"
exeptions[GHOSTSCRIPT-700434-0.pdf]="Exception: Caught unexpected exception during parsing caused by exception: Error while parsing object : 2 0 caused by exception: Object number 2 should be object stream, but in fact it is null"
exeptions[PDFBOX-4623-0.pdf]="Exception: Caught unexpected exception during parsing caused by exception: Object with key 3 0 obj has stream length value which references to its own object key"
exeptions[sumatrapdf-448-0.pdf]="Exception: Couldn't parse stream caused by exception: PDFParser::GetXRefSection(...)Exception during parsing xref stream at offset 0 caused by exception"
exeptions[weblinks.pdf]="Exception: Couldn't parse stream caused by exception: End of file is reached"

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Malicious/Resources/UnhandledExceptions"

    SAVEIFS=$IFS
    IFS=$(echo -en "\n\b")

    cp -r verapdf/* $BATS_TEST_TMPDIR
    assert [ ${#exeptions[@]} != 0 ]
}

teardown() {
    IFS=$SAVEIFS
    if ! [ -n "$BATS_TEST_COMPLETED" ]  ; then
         echo -e "\n  Test fail with a file: $exeption_file" >&3
    fi
    echo -e "Done ..." >&3
}

@test "Malicious check. Unhandled Exceptions checking ... " {
    for exeption_file in "${!exeptions[@]}"; do
        echo "Checking file: $exeption_file" >&3
        run verapdf/verapdf $FILE_PATH/$exeption_file
        assert_output --partial 'batchSummary totalJobs="1"'
        assert_output --partial 'veraExceptions="1"'
        assert_output --partial  ${exeptions[$exeption_file]}
        [ "$status" -eq 7 ]
    done
}
