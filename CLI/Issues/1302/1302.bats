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
    [ "${stderr_lines[1]}" = "WARNING: $BATS_TEST_DIRNAME/inputs/./file-Japanese-日本.pdf" ]
    [ "${stderr_lines[11]}" = "WARNING: $BATS_TEST_DIRNAME/inputs/./file-Chinese-中國人.pdf" ]
    [ "${stderr_lines[21]}" = "WARNING: $BATS_TEST_DIRNAME/inputs/./file-Česká republika.pdf" ]
    [ "${stderr_lines[31]}" = "WARNING: $BATS_TEST_DIRNAME/inputs/./file-Русский.pdf" ]
    [ "${stderr_lines[41]}" = "WARNING: $BATS_TEST_DIRNAME/inputs/./file-Deutschland.pdf" ]
    [ "${stderr_lines[51]}" = "WARNING: $BATS_TEST_DIRNAME/inputs/./file-Arabic-عربي.pdf" ]
    [ "${stderr_lines[61]}" = "WARNING: $BATS_TEST_DIRNAME/inputs/./file-Hebrew-עִברִית.pdf" ]
    [ "${stderr_lines[71]}" = "WARNING: $BATS_TEST_DIRNAME/inputs/./čeština.pdf" ]
    [ "${stderr_lines[73]}" = "WARNING: $BATS_TEST_DIRNAME/inputs/./file-Hindi-हिन्दी.pdf" ]
    [ "${stderr_lines[83]}" = "WARNING: $BATS_TEST_DIRNAME/inputs/./file-Română.pdf" ]
    [ "${stderr_lines[93]}" = "WARNING: $BATS_TEST_DIRNAME/inputs/./file-Magyarország.pdf" ]
    [ "${stderr_lines[103]}" = "WARNING: $BATS_TEST_DIRNAME/inputs/./file-Greek_Ελληνικά.pdf" ]
    [ "${stderr_lines[113]}" = "WARNING: $BATS_TEST_DIRNAME/inputs/./file-Slovensko.pdf" ]
}
