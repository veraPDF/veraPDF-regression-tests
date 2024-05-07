<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 79 -->
    <!-- https://github.com/veraPDF/veraPDF-wcag-algs/issues/79 -->
    <!-- File: test-document-8.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '19')">Failed check, Expected: 19</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '4.1.2' and @testNumber = '21' and @failedChecks = '15') or
            (@clause = '4.1.2' and @testNumber = '10' and @failedChecks = '9') or
            (@clause = '7.21.4.2' and @testNumber = '1' and @failedChecks = '22') or
            (@clause = '4.1.1' and @testNumber = '2' and @failedChecks = '2') or
            (@clause = '1.3.1' and @testNumber = '3' and @failedChecks = '4') or
            (@clause = '1.4.10' and @testNumber = '1' and @failedChecks = '11') or
            (@clause = '7.9' and @testNumber = '1' and @failedChecks = '7') or
            (@clause = '4.1.1' and @testNumber = '1' and @failedChecks = '1') or
            (@clause = '7.10' and @testNumber = '2' and @failedChecks = '1') or
            (@clause = '1.4.4' and @testNumber = '1' and @failedChecks = '2') or
            (@clause = '1.3.1' and @testNumber = '4' and @failedChecks = '155') or
            (@clause = '7.1' and @testNumber = '3' and @failedChecks = '1746') or
            (@clause = '1.3.1' and @testNumber = '2' and @failedChecks = '6') or
            (@clause = '4.1.2' and @testNumber = '1' and @failedChecks = '3') or
            (@clause = '7.18.1' and @testNumber = '2' and @failedChecks = '16') or
            (@clause = '7.21.4.2' and @testNumber = '2' and @failedChecks = '1') or
            (@clause = '4.1.2' and @testNumber = '48' and @failedChecks = '24') or
            (@clause = '7.21.3.2' and @testNumber = '1' and @failedChecks = '1') or
            (@clause = '7.10' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected:
            4.1.2-21, 15 checks, or
            4.1.2-10, 9 checks, or
            7.21.4.2-1, 22 checks, or
            4.1.1-2, 2 checks, or
            1.3.1-3, 4 checks, or
            1.4.10-1, 11 checks, or
            7.9-1, 7 checks, or
            4.1.1-1, 1 check, or
            7.10-2, 1 check, or
            1.4.4-1, 2 check, or
            4.1.2-41, 1 check, or
            1.3.1-4, 155 checks, or
            7.1-3, 1746 checks, or
            4.1.2-44, 1 check, or
            1.3.1-2, 6 checks, or
            4.1.2-1, 3 checks, or
            7.21.4.2-2, 1 check, or
            7.18.1-2, 16 checks, or
            4.1.2-48, 24 checks, or
            7.21.3.2-1, 1 check, or
            7.10-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '162'">Failed check, Expected: 162</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Content stream contains duplicate MCID - 0") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 1") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 10") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 11") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 12") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 13") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 14") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 15") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 16") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 17") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 18") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 19") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 2") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 21") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 22") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 23") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 24") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 25") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 26") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 28") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 29") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 3") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 30") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 31") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 32") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 33") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 34") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 35") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 36") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 37") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 38") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 39") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 4") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 40") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 5") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 6") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 7") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 8") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains duplicate MCID - 9") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 0") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 1") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 10") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 11") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 12") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 13") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 14") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 15") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 16") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 17") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 18") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 19") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 2") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 21") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 22") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 23") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 24") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 25") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 26") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 27") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 28") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 29") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 3") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 30") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 31") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 32") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 33") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 34") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 35") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 36") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 37") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 38") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 39") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 4") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 40") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 41") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 42") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 5") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 6") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 7") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 8") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Content stream contains nested MCID - 9") and @occurrences = "2" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: Content stream contains duplicate MCID - 0' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 1' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 10' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 11' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 12' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 13' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 14' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 15' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 16' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 17' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 18' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 19' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 2' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 21' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 22' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 23' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 24' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 25' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 26' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 28' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 29' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 3' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 30' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 31' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 32' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 33' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 34' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 35' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 36' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 37' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 38' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 39' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 4' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 40' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 5' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 6' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 7' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 8' with 2 occurrences, or 
            'WARNING: Content stream contains duplicate MCID - 9' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 0' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 1' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 10' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 11' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 12' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 13' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 14' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 15' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 16' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 17' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 18' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 19' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 2' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 21' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 22' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 23' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 24' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 25' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 26' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 27' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 28' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 29' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 3' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 30' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 31' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 32' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 33' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 34' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 35' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 36' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 37' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 38' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 39' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 4' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 40' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 41' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 42' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 5' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 6' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 7' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 8' with 2 occurrences, or 
            'WARNING: Content stream contains nested MCID - 9' with 2 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
