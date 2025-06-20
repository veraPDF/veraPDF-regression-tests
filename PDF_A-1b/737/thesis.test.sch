<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 737 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/737 -->
    <!-- File: thesis.test.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '20')">Failed check, Expected: 20</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.1.4' and @testNumber = '3' and @failedChecks = '1') or 
            (@clause = '6.1.7' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.2.3.3' and @testNumber = '1' and @failedChecks = '567') or 
            (@clause = '6.2.3.3' and @testNumber = '3' and @failedChecks = '25144') or 
            (@clause = '6.2.4' and @testNumber = '3' and @failedChecks = '1') or 
            (@clause = '6.3.3.2' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = '6.3.5' and @testNumber = '3' and @failedChecks = '2') or 
            (@clause = '6.4' and @testNumber = '2' and @failedChecks = '34') or 
            (@clause = '6.4' and @testNumber = '3' and @failedChecks = '642') or 
            (@clause = '6.4' and @testNumber = '5' and @failedChecks = '1') or 
            (@clause = '6.4' and @testNumber = '6' and @failedChecks = '10') or 
            (@clause = '6.5.3' and @testNumber = '2' and @failedChecks = '470') or 
            (@clause = '6.5.3' and @testNumber = '3' and @failedChecks = '470') or 
            (@clause = '6.7.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '2' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '3' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '4' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '5' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '6' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '7' and @failedChecks = '1')">Failed rules, Expected: 
            6.1.4-3, 1 check, or 
            6.1.7-1, 1 check, or 
            6.2.3.3-1, 567 checks, or 
            6.2.3.3-3, 25144 checks, or 
            6.2.4-3, 1 check, or 
            6.3.3.2-1, 2 checks, or 
            6.3.5-3, 2 checks, or 
            6.4-2, 34 checks, or 
            6.4-3, 642 checks, or 
            6.4-5, 1 check, or 
            6.4-6, 10 checks, or 
            6.5.3-2, 470 checks, or 
            6.5.3-3, 470 checks, or 
            6.7.2-1, 1 check, or 
            6.7.3-2, 1 check, or 
            6.7.3-3, 1 check, or 
            6.7.3-4, 1 check, or 
            6.7.3-5, 1 check, or 
            6.7.3-6, 1 check, or 
            6.7.3-7, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '130'">Failed check, Expected: 130</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Incorrect type of Length value in stream dictionary(object key = 1339 0 obj, offset = 444184)") and @occurrences = "21" and @level = "WARNING") or 
            (contains(., "Incorrect type of Length value in stream dictionary(object key = 3716 0 obj, offset = 2454358)") and @occurrences = "16" and @level = "WARNING") or 
            (contains(., "Incorrect type of Length value in stream dictionary(object key = 4072 0 obj, offset = 2578501)") and @occurrences = "28" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 382857)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 383189)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 383520)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 383862)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 384205)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 384534)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 384866)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 385209)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 385540)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 385871)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 386204)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 386536)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 386868)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 387201)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 387533)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 387866)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 388197)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 388526)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 388857)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 389188)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 389414)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2409985)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2410320)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2410662)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2410993)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2411335)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2411665)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2412007)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2412263)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2412604)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2412935)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2413268)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2413594)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2413936)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2414268)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2414601)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2414828)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2501323)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2501649)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2501975)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2502312)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2502648)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2502985)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2503322)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2503659)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2503995)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2504321)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2504656)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2504991)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2505328)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2505665)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2505991)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2506327)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2506654)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2506990)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2507318)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2507645)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2507971)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2508308)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2508633)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2508959)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2509296)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2509558)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2509894)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2510115)") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: Incorrect type of Length value in stream dictionary(object key = 1339 0 obj, offset = 444184)' with 21 occurrences, or 
            'WARNING: Incorrect type of Length value in stream dictionary(object key = 3716 0 obj, offset = 2454358)' with 16 occurrences, or 
            'WARNING: Incorrect type of Length value in stream dictionary(object key = 4072 0 obj, offset = 2578501)' with 28 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 382857)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 383189)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 383520)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 383862)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 384205)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 384534)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 384866)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 385209)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 385540)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 385871)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 386204)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 386536)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 386868)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 387201)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 387533)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 387866)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 388197)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 388526)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 388857)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 389188)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 1339 0 obj, offset = 389414)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2409985)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2410320)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2410662)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2410993)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2411335)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2411665)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2412007)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2412263)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2412604)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2412935)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2413268)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2413594)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2413936)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2414268)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2414601)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 3716 0 obj, offset = 2414828)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2501323)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2501649)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2501975)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2502312)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2502648)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2502985)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2503322)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2503659)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2503995)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2504321)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2504656)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2504991)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2505328)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2505665)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2505991)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2506327)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2506654)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2506990)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2507318)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2507645)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2507971)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2508308)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2508633)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2508959)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2509296)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2509558)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2509894)' with 1 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 4072 0 obj, offset = 2510115)' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
