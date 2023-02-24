#!/usr/bin/env bats
setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

}

#see also #1014
@test "— Reading pdf from stdin & --format text option" {

    run echo $(cat $FILE_PATH/a.pdf | verapdf/verapdf --format text)
    assert_output --partial 'FAIL STDIN'
}

@test "— Reading pdf from stdin & --format html option" {

    run echo $(cat $FILE_PATH/a.pdf | verapdf/verapdf --format html)
    assert_output --partial '<td>STDIN</td>'
}

@test "— Reading pdf from stdin & --format json option" {

    run echo $(cat $FILE_PATH/a.pdf | verapdf/verapdf --format json)
    assert_output --partial '"jobs":[{"itemDetails":{"name":"STDIN","size":-1}'
}
