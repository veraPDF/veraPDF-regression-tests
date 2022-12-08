#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

}

@test "--help. Shows this message and exits" {

    run verapdf/verapdf --help

    [ "$status" -eq 0 ]
    assert_output --partial 'Usage: veraPDF [options] FILES'
    assert_output --partial 'Options:'
    assert_output --partial "--addlogs"
    assert_output --partial "--config"
    assert_output --partial "--debug"
    assert_output --partial "--defaultflavour"
    assert_output --partial "--disableerrormessages"
    assert_output --partial "--extract"
    assert_output --partial "--fixmetadata"
    assert_output --partial "--flavour"
    assert_output --partial "--format"
    assert_output --partial "--help"
    assert_output --partial "--list"
    assert_output --partial "--loglevel"
    assert_output --partial "--maxfailures"
    assert_output --partial "--maxfailuresdisplayed"
    assert_output --partial "--nonpdfext"
    assert_output --partial "--off"
    assert_output --partial "--password"
    assert_output --partial "--policyfile"
    assert_output --partial "--prefix"
    assert_output --partial "--processes"
    assert_output --partial "--profile"
    assert_output --partial "--profilesWiki"
    assert_output --partial "--progress"
    assert_output --partial "--recurse"
    assert_output --partial "--savefolder"
    assert_output --partial "--profilesWiki"
    assert_output --partial "--success, --passed"
    assert_output --partial "--verbose"
    assert_output --partial "--version"

}
