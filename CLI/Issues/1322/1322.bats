bats_require_minimum_version 1.5.0

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

    if [ ! -d "$HOME/.verapdf/config/" ]; then
        mkdir -p "$HOME/.verapdf/config/"
    fi

    cp -r verapdf/* $BATS_TEST_TMPDIR
    cp -r $BATS_TEST_DIRNAME/config/plugins.xml $HOME/.verapdf/config/
}

teardown() {
    if [ -d "$HOME/.verapdf/config/" ]; then
        rm -r "$HOME/.verapdf/config/"
    fi
}

# https://github.com/orgs/veraPDF/projects/2/views/6?pane=issue&itemId=20163154
@test "#1322: Broken /home/.verapdf/config/plugins.xml check" {

    run --separate-stderr -- $BATS_TEST_TMPDIR/verapdf $FILE_PATH/a.pdf

    run echo $stderr
    assert_output --partial "WARNING: The plugins config file $HOME/.verapdf/config/plugins.xml is missing or damaged"
    [ "$status" -eq 0 ]
}
