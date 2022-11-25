#!/usr/bin/env bats
bats_require_minimum_version 1.5.0

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

#https://github.com/veraPDF/veraPDF-library/pull/1302
@test "#1302, Set UTF-8 encoding to logs, checking stderr using stdout" {

    run --separate-stderr -- verapdf/verapdf $BATS_TEST_DIRNAME/inputs/. --debug --format text
    [ "$status" -eq 0 ]

    run echo ${stderr_lines[@]}

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
