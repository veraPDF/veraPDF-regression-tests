bats_require_minimum_version 1.5.0

setup() {
  PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
  load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
  _common_setup
}

# Validation bomb regression test
@test "Embedded PDF validation does not cause excessive recursion" {

  run timeout 30s verapdf/verapdf --flavour 2b "$BATS_TEST_DIRNAME/bomb-depth12.pdf"

  [ "$status" -eq 0 ]
  assert_output --partial "isCompliant=\"true\""
}