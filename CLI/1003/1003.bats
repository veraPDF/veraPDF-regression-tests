setup() {
  PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../.." >/dev/null 2>&1 && pwd)"
  load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
  _common_setup
}

# https://github.com/veraPDF/veraPDF-library/pull/1003
@test "#1003, Difference between xml and mrr output?, Keep supporting mrr as a synonym of the new xml format, mrr" {

  run verapdf/verapdf --format mrr ./CLI/1003/6.1.3-01-fail-5.pdf

  [ "$status" -eq 0 ]

  assert_output --partial '<?xml version="1.0" encoding="utf-8"?>'
  assert_output --partial '<report>'
  assert_output --partial '</report>'
  assert_output --partial '<validationReport profileName="PDF/A-2B validation profile" statement="PDF file is compliant with Validation Profile requirements." isCompliant="true">'
}

# https://github.com/veraPDF/veraPDF-library/pull/1003
@test "#1003, Difference between xml and mrr output?, Keep supporting mrr as a synonym of the new xml format, xml" {

  run verapdf/verapdf --format xml ./CLI/1003/6.1.3-01-fail-5.pdf

  [ "$status" -eq 0 ]
  assert_output --partial '<?xml version="1.0" encoding="utf-8"?>'
  assert_output --partial '<report>'
  assert_output --partial '</report>'
  assert_output --partial '<validationReport profileName="PDF/A-2B validation profile" statement="PDF file is compliant with Validation Profile requirements." isCompliant="true">'
}

# https://github.com/veraPDF/veraPDF-library/pull/1003
@test "#1003, Difference between xml and mrr output?, Keep supporting mrr as a synonym of the new xml format, Rename old xml to raw" {

  run verapdf/verapdf --format raw ./CLI/1003/6.1.3-01-fail-5.pdf

  [ "$status" -eq 0 ]

  assert_output --partial '<?xml version="1.0" encoding="utf-8"?>'
  assert_output --partial '<rawResults>'
  assert_output --partial '</rawResults>'
  assert_output --partial '<validationResult xmlns="http://www.verapdf.org/ValidationProfile" flavour="PDFA_2_B" totalAssertions="81" isCompliant="true">'
}
