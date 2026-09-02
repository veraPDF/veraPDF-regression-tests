bats_require_minimum_version 1.5.0

setup() {
  PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
  load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
  _common_setup
}

# https://github.com/veraPDF/veraPDF-library/issues/1487
@test "#1487: CIDFontType2 does not require cmap table" {

  run --separate-stderr verapdf/verapdf --loglevel 4 --format text $BATS_TEST_DIRNAME/testok.pdf

  [ "$status" -eq 0 ]

  run echo "$stderr"
  refute_output --partial "True type font doesn't contain cmap table"
}
