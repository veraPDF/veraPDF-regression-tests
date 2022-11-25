#!/usr/bin/env bats
bats_require_minimum_version 1.5.0

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

teardown() {
    echo -e "Done ... \n" >&3
}

#https://github.com/veraPDF/veraPDF-library/pull/1302
@test "#1302, Set UTF-8 encoding to logs, checking stderr_lines directly" {

    run --separate-stderr -- verapdf/verapdf $BATS_TEST_DIRNAME/inputs/. --debug --format text
    echo ${stderr_lines[@]} >&3
    echo -e "\n" >&3

    [ "$status" -eq 0 ]
    echo ${stderr_lines[1]} >&3
    [[ "${stderr_lines[1]}" == *"file-Japanese-日本.pdf"* ]] # checking if the file name is contained in the log
    echo ${stderr_lines[11]} >&3
    [[ "${stderr_lines[11]}" == *"file-Chinese-中國人.pdf"* ]]
    echo ${stderr_lines[21]} >&3
    [[ "${stderr_lines[21]}" == *"file-Česká republika.pdf"* ]]
    echo ${stderr_lines[31]} >&3
    [[ "${stderr_lines[31]}" == *"file-Русский.pdf"* ]]
    echo ${stderr_lines[41]} >&3
    [[ "${stderr_lines[41]}" == *"file-Deutschland.pdf"* ]]
    echo ${stderr_lines[51]} >&3
    [[ "${stderr_lines[51]}" == *"file-Arabic-عربي.pdf"* ]]
    echo ${stderr_lines[61]} >&3
    [[ "${stderr_lines[61]}" == *"file-Hebrew-עִברִית.pdf"* ]]
    echo ${stderr_lines[71]} >&3
    [[ "${stderr_lines[71]}" == *"čeština.pdf"* ]]
    echo ${stderr_lines[73]} >&3
    [[ "${stderr_lines[73]}" == *"file-Hindi-हिन्दी.pdf"* ]]
    echo ${stderr_lines[83]} >&3
    [[ "${stderr_lines[83]}" == *"file-Română.pdf"* ]]
    echo ${stderr_lines[93]} >&3
    [[ "${stderr_lines[93]}" == *"file-Magyarország.pdf"* ]]
    echo ${stderr_lines[103]} >&3
    [[ "${stderr_lines[103]}" == *"file-Greek_Ελληνικά.pdf"* ]]
    echo ${stderr_lines[113]} >&3
    [[ "${stderr_lines[113]}" == *"file-Slovensko.pdf"* ]]
}

#https://github.com/veraPDF/veraPDF-library/pull/1302
@test "#1302, Set UTF-8 encoding to logs, checking stderr using stdout" {

    run --separate-stderr -- verapdf/verapdf $BATS_TEST_DIRNAME/inputs/. --debug --format text
    [ "$status" -eq 0 ]

    echo ${stderr_lines[@]} >&3
    echo ${stderr_lines[@]}

    assert_output --partial "file-Japanese-日本.pdf"
    assert_output --partial "file-Chinese-中國人.pdf"
    assert_output --partial "file-Česká republika.pdf"
    assert_output --partial "file-Русский.pdf"
    assert_output --partial "file-Deutschland.pdf"
    assert_output --partial "file-Arabic-عربي.pdf"
    assert_output --partial "file-Hebrew-עִברִית.pdf"
    assert_output --partial "čeština.pdf"
    assert_output --partial "file-Hindi-हिन्दी.pdf"
    assert_output --partial "file-Română.pdf"
    assert_output --partial "file-Magyarország.pdf"
    assert_output --partial "file-Greek_Ελληνικά.pdf"
    assert_output --partial "file-Slovensko.pdf"
}
