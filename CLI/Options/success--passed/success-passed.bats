#!/usr/bin/env bats
FILES_TO_CHECK=(
    "a.pdf"
    "a.zip")

OPTIONS_TO_CHECK=(
    "--success"
    "--passed")

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"
    assert [ ${#FILES_TO_CHECK[@]} != 0 ]
    assert [ ${#OPTIONS_TO_CHECK[@]} != 0 ]
}

@test "--success, --passed, Logs successful validation checks" {

    for file in "${FILES_TO_CHECK[@]}"; do
        logs_validation_check $file
    done
}

logs_validation_check() {
    for log in "${OPTIONS_TO_CHECK[@]}"; do
        echo "Running: $1, $log" >&3
        run verapdf/verapdf $FILE_PATH/$1 $log
        assert_output --partial '<check status="passed">'
        [ "$status" -eq 1 ]
    done
}
