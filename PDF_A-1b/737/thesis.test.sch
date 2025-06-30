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
            (contains(., "Stream length has wrong value or is missing") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: Incorrect type of Length value in stream dictionary(object key = 1339 0 obj, offset = 444184)' with 21 occurrences, or 
            'WARNING: Incorrect type of Length value in stream dictionary(object key = 3716 0 obj, offset = 2454358)' with 16 occurrences, or 
            'WARNING: Incorrect type of Length value in stream dictionary(object key = 4072 0 obj, offset = 2578501)' with 28 occurrences, or 
            'WARNING: Stream length has wrong value or is missing' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
