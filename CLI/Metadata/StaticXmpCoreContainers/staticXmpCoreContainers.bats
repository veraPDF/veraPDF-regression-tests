#!/usr/bin/env bats
bats_require_minimum_version 1.5.0

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    cp -r $BATS_TEST_DIRNAME/* $BATS_TEST_TMPDIR
}

teardown() {
    echo -e "Done ... \n" >&3
}

@test 'StaticXmpCoreContainers check. XMPException: Unregistered schema namespace URI' {
    skip 'Waiting for to be fixed'

    run --separate-stderr -- verapdf/verapdf $BATS_TEST_TMPDIR/5-t01-fail-a.pdf  $BATS_TEST_TMPDIR/5-t01-pass-a.pdf --fixmetadata --flavour ua1 --loglevel 4
    [ "$status" -eq 1 ]
    run echo $stderr
    assert_output --partial "org.verapdf.xmp.XMPException: Unregistered schema namespace URI"
    fineObtainPresent=$(echo $stderr | grep -w -o "FINE: Can not obtain identification fields" | wc -l) #Count the number of lines
    assert_equal $fineObtainPresent "1"

    run --separate-stderr -- verapdf/verapdf $BATS_TEST_TMPDIR/5-t01-fail-a.pdf --fixmetadata --flavour ua1 --loglevel 4
    [ "$status" -eq 1 ]
    run echo $stderr
    assert_output --partial "org.verapdf.xmp.XMPException: Unregistered schema namespace URI"
    fineObtainPresent=$(echo $stderr | grep -w -o "FINE: Can not obtain identification fields" | wc -l) #Count the number of lines
    assert_equal $fineObtainPresent "1"
    
}
