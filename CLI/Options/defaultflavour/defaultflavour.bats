#!/usr/bin/env bats

FILES_TO_CHECK=(
    "a.pdf"
    "a.zip")

#Creating an associative array
typeset -Ag profiles
profiles[1a]=PDF/A-1A
profiles[1b]=PDF/A-1B
profiles[2a]=PDF/A-2A
profiles[2b]=PDF/A-2B
profiles[2u]=PDF/A-2U
profiles[3a]=PDF/A-3A
profiles[3b]=PDF/A-3B
profiles[3u]=PDF/A-3U
profiles[4]=PDF/A-4
profiles[4f]=PDF/A-4F
profiles[4E]=PDF/A-4E
profiles[ua1]=PDF/UA-1
profiles[ua2]="PDF/UA-2 + Tagged PDF"

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    FILE_PATH="$PROJECT_ROOT/CLI/Resources"

    assert [ ${#FILES_TO_CHECK[@]} != 0 ]
    assert [ ${#profiles[@]} != 0 ]
}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour. Default: 1b" {

    for file in "${FILES_TO_CHECK[@]}"; do
        flavour_by_default_check $file
    done
}

@test "--defaultflavour, Chooses built-in Validation Profile default flavour" {

    for item in "${!profiles[@]}"; do
        defaultflavour_check $item "${profiles[$item]}"
    done
}

flavour_by_default_check() {
    echo "Running: $1" >&3
    run verapdf/verapdf $FILE_PATH/$1
    assert_output --partial 'profileName="PDF/A-1B validation profile"'
    assert [ "$status" == 1 ]
}

defaultflavour_check() {
    for file in "${FILES_TO_CHECK[@]}"; do
        echo "Running: $file flavour: $1, $2" >&3
        run verapdf/verapdf $FILE_PATH/$file --defaultflavour $1
        assert_output --partial "profileName=\"$2 validation profile\""
        assert [ "$status" == 1 ]
    done
}
