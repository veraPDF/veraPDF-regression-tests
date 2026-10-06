bats_require_minimum_version 1.5.0

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

@test "Disable log: Invalid use of ColorSpace name /ICCBased" {
    run verapdf/verapdf $BATS_TEST_DIRNAME/icc-reproducer.pdf --addlogs --loglevel 4 -f ua1

    refute_output --partial 'Invalid use of ColorSpace name /ICCBased'
}
