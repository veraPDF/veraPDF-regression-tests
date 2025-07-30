<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: PDFBOX-4623-0.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '7')">Failed check, Expected: 7</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.1.3' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.1.7' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.2.3.3' and @testNumber = '1' and @failedChecks = '5') or 
            (@clause = '6.4' and @testNumber = '3' and @failedChecks = '1') or 
            (@clause = '6.7.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '6' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '7' and @failedChecks = '1')">Failed rules, Expected: 
            6.1.3-1, 1 check, or 
            6.1.7-1, 1 check, or 
            6.2.3.3-1, 5 checks, or 
            6.4-3, 1 check, or 
            6.7.2-1, 1 check, or 
            6.7.3-6, 1 check, or 
            6.7.3-7, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '4'">Failed check, Expected: 4</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Exception during parsing Length entry of stream: Incorrect type of Length value in stream dictionary(object key = 3 0 obj, offset = 74)") and @occurrences = "2" and @level = "WARNING") or 
            (contains(., "Stream length has wrong value or is missing(object key = 3 0 obj, offset = 74)") and @occurrences = "2" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: Exception during parsing Length entry of stream: Incorrect type of Length value in stream dictionary(object key = 3 0 obj, offset = 74)' with 2 occurrences, or 
            'WARNING: Stream length has wrong value or is missing(object key = 3 0 obj, offset = 74)' with 2 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
