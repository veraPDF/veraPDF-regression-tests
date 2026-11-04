bats_require_minimum_version 1.5.0

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/1646
@test "#1646: Empty XMP metadata is serialized correctly in JSON report" {

    run verapdf/verapdf --extract metadata --format json "$BATS_TEST_DIRNAME/empty-xmp.pdf"

    [ "$status" -eq 0 ]

    assert_output --partial '"metadata" : { }'
    assert_output --partial '"veraExceptions" : 0'

    if python3 --version >/dev/null 2>&1; then
    printf '%s\n' "$output" | python3 -m json.tool > /dev/null
else
    printf '%s\n' "$output" | python -m json.tool > /dev/null
fi
}
