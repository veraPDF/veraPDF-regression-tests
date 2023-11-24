#!/usr/bin/env bats

setup() {
    PROJECT_ROOT="$(cd "$(dirname "$BATS_TEST_FILENAME")/../../.." >/dev/null 2>&1 && pwd)"
    load "$PROJECT_ROOT/tools/test_helper/common-setup.bash"
    _common_setup
}

#https://github.com/veraPDF/veraPDF-library/pull/1290
@test "#1290, Incorrect output encoding, --format text" {

    run verapdf/verapdf $BATS_TEST_DIRNAME/inputs/. --debug --format text 

    [ "$status" -eq 0 ]
    assert_output --partial "PASS $BATS_TEST_DIRNAME/inputs/./file-Japanese-日本.pdf"
    assert_output --partial "PASS $BATS_TEST_DIRNAME/inputs/./file-Chinese-中國人.pdf"
    assert_output --partial "PASS $BATS_TEST_DIRNAME/inputs/./file-Česká republika.pdf"
    assert_output --partial "PASS $BATS_TEST_DIRNAME/inputs/./file-Русский.pdf"
    assert_output --partial "PASS $BATS_TEST_DIRNAME/inputs/./file-Deutschland.pdf"
    assert_output --partial "PASS $BATS_TEST_DIRNAME/inputs/./file-Arabic-عربي.pdf"
    assert_output --partial "PASS $BATS_TEST_DIRNAME/inputs/./file-Hebrew-עִברִית.pdf"
    assert_output --partial "PASS $BATS_TEST_DIRNAME/inputs/./čeština.pdf"
    assert_output --partial "PASS $BATS_TEST_DIRNAME/inputs/./file-Hindi-हिन्दी.pdf"
    assert_output --partial "PASS $BATS_TEST_DIRNAME/inputs/./file-Română.pdf"
    assert_output --partial "PASS $BATS_TEST_DIRNAME/inputs/./file-Magyarország.pdf"
    assert_output --partial "PASS $BATS_TEST_DIRNAME/inputs/./file-Greek_Ελληνικά.pdf"
    assert_output --partial "PASS $BATS_TEST_DIRNAME/inputs/./file-Slovensko.pdf"
 
}

#https://github.com/veraPDF/veraPDF-library/pull/1290
@test "#1290, Incorrect output encoding, --format html" {

    run verapdf/verapdf $BATS_TEST_DIRNAME/inputs/. --debug --format html 

    [ "$status" -eq 0 ]
    assert_output --partial "<td class=\"lefted\">$BATS_TEST_DIRNAME/inputs/./file-Japanese-日本.pdf</td>"
    assert_output --partial "<td class=\"lefted\">$BATS_TEST_DIRNAME/inputs/./file-Chinese-中國人.pdf</td>"
    assert_output --partial "<td class=\"lefted\">$BATS_TEST_DIRNAME/inputs/./file-Česk&aacute; republika.pdf</td>"
    assert_output --partial "<td class=\"lefted\">$BATS_TEST_DIRNAME/inputs/./file-Русский.pdf</td>"
    assert_output --partial "<td class=\"lefted\">$BATS_TEST_DIRNAME/inputs/./file-Deutschland.pdf</td>"
    assert_output --partial "<td class=\"lefted\">$BATS_TEST_DIRNAME/inputs/./file-Arabic-عربي.pdf</td>"
    assert_output --partial "<td class=\"lefted\">$BATS_TEST_DIRNAME/inputs/./file-Hebrew-עִברִית.pdf</td>"
    assert_output --partial "<td class=\"lefted\">$BATS_TEST_DIRNAME/inputs/./čeština.pdf</td>"
    assert_output --partial "<td class=\"lefted\">$BATS_TEST_DIRNAME/inputs/./file-Hindi-हिन्दी.pdf</td>"
    assert_output --partial "<td class=\"lefted\">$BATS_TEST_DIRNAME/inputs/./file-Rom&acirc;nă.pdf</td>"
    assert_output --partial "<td class=\"lefted\">$BATS_TEST_DIRNAME/inputs/./file-Magyarorsz&aacute;g.pdf</td>"
    assert_output --partial "<td class=\"lefted\">$BATS_TEST_DIRNAME/inputs/./file-Greek_Ελληνικά.pdf</td>"
    assert_output --partial "<td class=\"lefted\">$BATS_TEST_DIRNAME/inputs/./file-Slovensko.pdf</td>"
}

#https://github.com/veraPDF/veraPDF-library/pull/1290
@test "#1290, Incorrect output encoding, --format xml" {

    run verapdf/verapdf $BATS_TEST_DIRNAME/inputs/. --debug --format xml 

    [ "$status" -eq 0 ]
    assert_output --partial "<name>$BATS_TEST_DIRNAME/inputs/./file-Japanese-日本.pdf</name>"
    assert_output --partial "<name>$BATS_TEST_DIRNAME/inputs/./file-Chinese-中國人.pdf</name>"
    assert_output --partial "<name>$BATS_TEST_DIRNAME/inputs/./file-Česká republika.pdf</name>"
    assert_output --partial "<name>$BATS_TEST_DIRNAME/inputs/./file-Русский.pdf</name>"
    assert_output --partial "<name>$BATS_TEST_DIRNAME/inputs/./file-Deutschland.pdf</name>"
    assert_output --partial "<name>$BATS_TEST_DIRNAME/inputs/./file-Arabic-عربي.pdf</name>"
    assert_output --partial "<name>$BATS_TEST_DIRNAME/inputs/./file-Hebrew-עִברִית.pdf</name>"
    assert_output --partial "<name>$BATS_TEST_DIRNAME/inputs/./čeština.pdf</name>"
    assert_output --partial "<name>$BATS_TEST_DIRNAME/inputs/./file-Hindi-हिन्दी.pdf</name>"
    assert_output --partial "<name>$BATS_TEST_DIRNAME/inputs/./file-Română.pdf</name>"
    assert_output --partial "<name>$BATS_TEST_DIRNAME/inputs/./file-Magyarország.pdf</name>"
    assert_output --partial "<name>$BATS_TEST_DIRNAME/inputs/./file-Greek_Ελληνικά.pdf</name>"
    assert_output --partial "<name>$BATS_TEST_DIRNAME/inputs/./file-Slovensko.pdf</name>"
}

#https://github.com/veraPDF/veraPDF-library/pull/1290
@test "#1290, Incorrect output encoding, --format json" {

    run verapdf/verapdf $BATS_TEST_DIRNAME/inputs/. --debug --format json 

    [ "$status" -eq 0 ]
    assert_output --partial "{\"itemDetails\":{
  \"name\" : \"$BATS_TEST_DIRNAME/inputs/./file-Japanese-日本.pdf\",
  \"size\" : 909
}"

    assert_output --partial "{\"itemDetails\":{
  \"name\" : \"$BATS_TEST_DIRNAME/inputs/./file-Chinese-中國人.pdf\",
  \"size\" : 909
}"
    assert_output --partial "{\"itemDetails\":{
  \"name\" : \"$BATS_TEST_DIRNAME/inputs/./file-Česká republika.pdf\",
  \"size\" : 909
}"
    assert_output --partial "{\"itemDetails\":{
  \"name\" : \"$BATS_TEST_DIRNAME/inputs/./file-Русский.pdf\",
  \"size\" : 909
}"
    assert_output --partial "{\"itemDetails\":{
  \"name\" : \"$BATS_TEST_DIRNAME/inputs/./file-Deutschland.pdf\",
  \"size\" : 909
}"
    assert_output --partial "{\"itemDetails\":{
  \"name\" : \"$BATS_TEST_DIRNAME/inputs/./file-Arabic-عربي.pdf\",
  \"size\" : 909
}"
    assert_output --partial "{\"itemDetails\":{
  \"name\" : \"$BATS_TEST_DIRNAME/inputs/./file-Hebrew-עִברִית.pdf\",
  \"size\" : 909
}"
    assert_output --partial "{\"itemDetails\":{
  \"name\" : \"$BATS_TEST_DIRNAME/inputs/./čeština.pdf\",
  \"size\" : 25683
}"
    assert_output --partial "{\"itemDetails\":{
  \"name\" : \"$BATS_TEST_DIRNAME/inputs/./file-Hindi-हिन्दी.pdf\",
  \"size\" : 909
}"
    assert_output --partial "{\"itemDetails\":{
  \"name\" : \"$BATS_TEST_DIRNAME/inputs/./file-Română.pdf\",
  \"size\" : 909
}"
    assert_output --partial "{\"itemDetails\":{
  \"name\" : \"$BATS_TEST_DIRNAME/inputs/./file-Magyarország.pdf\",
  \"size\" : 909
}"
    assert_output --partial "{\"itemDetails\":{
  \"name\" : \"$BATS_TEST_DIRNAME/inputs/./file-Greek_Ελληνικά.pdf\",
  \"size\" : 909
}"
    assert_output --partial "{\"itemDetails\":{
  \"name\" : \"$BATS_TEST_DIRNAME/inputs/./file-Slovensko.pdf\",
  \"size\" : 909
}"
}
