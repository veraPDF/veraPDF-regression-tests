bats_require_minimum_version 1.5.0

setup() {
  PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
  load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
  _common_setup
}

# https://github.com/veraPDF/veraPDF-parser/issues/723
@test "#723: CFF FontMatrix is parsed correctly when it follows ROS" {

  run verapdf/verapdf --format text "$BATS_TEST_DIRNAME/penn.pdf"

  [ "$status" -eq 0 ]
  assert_output --partial "PASS"
  assert_output --partial "ua2"
}
