<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: 01800.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '18')">Failed check, Expected: 18</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.1.4' and @testNumber = '3' and @failedChecks = '1') or 
            (@clause = '6.1.13' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.2.3.3' and @testNumber = '1' and @failedChecks = '1281521') or 
            (@clause = '6.2.3.3' and @testNumber = '3' and @failedChecks = '152077') or 
            (@clause = '6.2.4' and @testNumber = '3' and @failedChecks = '14') or 
            (@clause = '6.3.3.2' and @testNumber = '1' and @failedChecks = '6') or 
            (@clause = '6.3.4' and @testNumber = '1' and @failedChecks = '58') or 
            (@clause = '6.3.5' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = '6.3.5' and @testNumber = '3' and @failedChecks = '23') or 
            (@clause = '6.3.6' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = '6.3.7' and @testNumber = '3' and @failedChecks = '1') or 
            (@clause = '6.4' and @testNumber = '2' and @failedChecks = '52') or 
            (@clause = '6.4' and @testNumber = '3' and @failedChecks = '211') or 
            (@clause = '6.4' and @testNumber = '5' and @failedChecks = '6') or 
            (@clause = '6.4' and @testNumber = '6' and @failedChecks = '6') or 
            (@clause = '6.5.3' and @testNumber = '2' and @failedChecks = '234') or 
            (@clause = '6.5.3' and @testNumber = '3' and @failedChecks = '2') or 
            (@clause = '6.7.11' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            6.1.4-3, 1 check, or 
            6.1.13-1, 1 check, or 
            6.2.3.3-1, 1281521 checks, or 
            6.2.3.3-3, 152077 checks, or 
            6.2.4-3, 14 checks, or 
            6.3.3.2-1, 6 checks, or 
            6.3.4-1, 58 checks, or 
            6.3.5-1, 4 checks, or 
            6.3.5-3, 23 checks, or 
            6.3.6-1, 4 checks, or 
            6.3.7-3, 1 check, or 
            6.4-2, 52 checks, or 
            6.4-3, 211 checks, or 
            6.4-5, 6 checks, or 
            6.4-6, 6 checks, or 
            6.5.3-2, 234 checks, or 
            6.5.3-3, 2 checks, or 
            6.7.11-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '3'">Failed check, Expected: 3</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Can&apos;t parse font program of font AAAAAA+Calibri,Bold") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Can&apos;t parse font program of font BAAAAA+Calibri") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Can&apos;t parse font program of font CAAAAA+Symbol") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: Can't parse font program of font AAAAAA+Calibri,Bold' with 1 occurrences, or 
            'WARNING: Can't parse font program of font BAAAAA+Calibri' with 1 occurrences, or 
            'WARNING: Can't parse font program of font CAAAAA+Symbol' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
