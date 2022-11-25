#!/usr/bin/env bats
bats_require_minimum_version 1.5.0

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

#https://github.com/veraPDF/veraPDF-library/pull/1302
@test "#1302, Set UTF-8 encoding to logs" {

    run --separate-stderr -- verapdf/verapdf $BATS_TEST_DIRNAME/inputs/. --debug --format text

    [ "$status" -eq 0 ]
    [[ "${stderr_lines[1]}" == *"file-Japanese-日本.pdf"* ]]  # checking if the file name is contained in the log
    [[ "${stderr_lines[11]}" == *"file-Chinese-中國人.pdf"* ]]
    [[ "${stderr_lines[21]}" == *"file-Česká republika.pdf"* ]]
    [[ "${stderr_lines[31]}" == *"file-Русский.pdf"* ]]
    [[ "${stderr_lines[41]}" == *"file-Deutschland.pdf"* ]]
    [[ "${stderr_lines[51]}" == *"file-Arabic-عربي.pdf"* ]]
    [[ "${stderr_lines[61]}" == *"file-Hebrew-עִברִית.pdf"* ]]
    [[ "${stderr_lines[71]}" == *"čeština.pdf"* ]]
    [[ "${stderr_lines[73]}" == *"file-Hindi-हिन्दी.pdf"* ]]
    [[ "${stderr_lines[83]}" == *"file-Română.pdf"* ]]
    [[ "${stderr_lines[93]}" == *"file-Magyarország.pdf"* ]]
    [[ "${stderr_lines[103]}" == *"file-Greek_Ελληνικά.pdf"* ]]
    [[ "${stderr_lines[113]}" == *"file-Slovensko.pdf"* ]]
}
