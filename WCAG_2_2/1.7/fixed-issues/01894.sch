<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: 01894.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '10')">Failed check, Expected: 10</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '2.4.9' and @testNumber = '1' and @failedChecks = '15') or 
            (@clause = '6.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '7.1' and @testNumber = '3' and @failedChecks = '4013') or 
            (@clause = '7.1' and @testNumber = '8' and @failedChecks = '1') or 
            (@clause = '7.1' and @testNumber = '11' and @failedChecks = '1') or 
            (@clause = '7.18.1' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = '7.18.1' and @testNumber = '2' and @failedChecks = '2') or 
            (@clause = '7.18.3' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '7.18.5' and @testNumber = '1' and @failedChecks = '15') or 
            (@clause = '7.21.4.1' and @testNumber = '1' and @failedChecks = '18')">Failed rules, Expected: 
            2.4.9-1, 15 checks, or 
            6.2-1, 1 check, or 
            7.1-3, 4013 checks, or 
            7.1-8, 1 check, or 
            7.1-11, 1 check, or 
            7.18.1-1, 2 checks, or 
            7.18.1-2, 2 checks, or 
            7.18.3-1, 1 check, or 
            7.18.5-1, 15 checks, or 
            7.21.4.1-1, 18 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '1'">Failed check, Expected: 1</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Can&apos;t parse font program of font KVERGU+HiddenHorzOCR") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: Can't parse font program of font KVERGU+HiddenHorzOCR' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
