bats_require_minimum_version 1.5.0

setup() {
  PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
  load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
  _common_setup
}

# https://github.com/veraPDF/veraPDF-arlington-tools/issues/23
# https://github.com/veraPDF/veraPDF-parser/pull/724
@test "#23: encrypted PDF with V=5 and R=5 can be processed" {

  run --separate-stderr verapdf/verapdf --password abcd --format xml "$BATS_TEST_DIRNAME/17R5.pdf"

  assert_output --partial 'failedToParse="0"'
  refute_output --partial "could not be processed"
}