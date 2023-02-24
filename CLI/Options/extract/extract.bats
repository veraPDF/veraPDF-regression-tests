#!/usr/bin/env bats
FILES_TO_CHECK=(
    "TestList.pdf"
    "TestList.zip")

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"
    assert [ ${#FILES_TO_CHECK[@]} != 0 ]
}

@test "--extract, Extracts and reports PDF features, checking: informationDict,font" {
    for file in "${FILES_TO_CHECK[@]}"; do
        extract_informationDict_font_check $file
    done
}

extract_informationDict_font_check() {
    echo "Running: $1" >&3
    run verapdf/verapdf $FILE_PATH/$1 --extract informationDict,font

    assert_output --partial '<informationDict>'
    assert_output --partial '<entry key="Creator">Microsoft Office Word</entry>'
    assert_output --partial '<entry key="ModDate">2017-04-08T10:54:00.000Z</entry>'
    assert_output --partial '</informationDict>'

    assert_output --partial '<fonts>'
    assert_output --partial '<font id="fntIndir10">'
    assert_output --partial '</fonts>'

    [ "$status" -eq 0 ]
}
