#!/usr/bin/env bats

#Creating an associative array
typeset -Ag branch_list
branch_list[master]="apps-*"
branch_list[integration]="apps-*-SNAPSHOT"

setup_file() {
    echo "Dowloading Maven ... to $BATS_SUITE_TMPDIR" >&3
    (cd $BATS_SUITE_TMPDIR && curl -O https://archive.apache.org/dist/maven/maven-3/3.9.3/binaries/apache-maven-3.9.3-bin.zip)
    unzip $BATS_SUITE_TMPDIR/apache-maven-3.9.3-bin.zip -d $BATS_SUITE_TMPDIR/

    PATH="$BATS_SUITE_TMPDIR/apache-maven-3.9.3/bin:$PATH"
    echo $(mvn --version) >&3

}

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup

    cp -r verapdf/* $BATS_TEST_TMPDIR
    assert [ ${#branch_list[@]} != 0 ]
}

# https://github.com/veraPDF/veraPDF-library/issues/1342
@test "#1342: building the veraPDF-apps from source fail" {

    cd $BATS_TEST_TMPDIR
    echo "Cloning ..." >&3
    run git clone https://github.com/veraPDF/veraPDF-apps
    [ "$status" -eq 0 ]

    cd veraPDF-apps
    echo PWD: $PWD >&3
    echo $(ls ./) >&3

    for branch in "${!branch_list[@]}"; do
        echo "Checking branch: $branch" >&3

        git checkout $branch
        echo "Building ..." >&3
        run mvn clean install
        [ "$status" -eq 0 ]

        run echo $(ls ./greenfield-apps/target/)
        FILE=$(ls $BATS_TEST_TMPDIR/veraPDF-apps/greenfield-apps/target/greenfield-${branch_list[$branch]}.jar)
        echo "File: $FILE" >&3
        assert [ -f "$FILE" ] # Check if File exists
    done

}
