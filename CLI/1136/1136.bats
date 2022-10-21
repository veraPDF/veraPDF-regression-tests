setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/1136
@test "#1136, IOException when saving the HTML report" {

    out=$(echo $(verapdf/verapdf --format html $BATS_TEST_DIRNAME/submission2-bad_symbols_in_font.pdf))

    run echo $out

    assert_output --partial '<td>PDF/A-1B validation profile</td> </tr> <tr> <td width="200" class="invalid"> Compliance: </td><td class="invalid"> Failed </td>'
    assert_output --partial 'Specification: ISO 19005-1:2005, Clause: 6.3.4, Test number: 1'
    assert_output --partial 'font[0](TimesNewRoPSMT)'
}
