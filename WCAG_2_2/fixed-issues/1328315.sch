<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: 1328315.pdf -->

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
            <sch:assert test="(@clause = '6.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '7.1' and @testNumber = '3' and @failedChecks = '12704') or 
            (@clause = '7.1' and @testNumber = '10' and @failedChecks = '1') or 
            (@clause = '7.1' and @testNumber = '11' and @failedChecks = '1') or 
            (@clause = '7.2' and @testNumber = '33' and @failedChecks = '3') or 
            (@clause = '7.2' and @testNumber = '34' and @failedChecks = '4980') or 
            (@clause = '7.18.3' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '7.18.5' and @testNumber = '1' and @failedChecks = '11') or 
            (@clause = '7.21.3.2' and @testNumber = '1' and @failedChecks = '31') or 
            (@clause = '7.21.8' and @testNumber = '1' and @failedChecks = '26')">Failed rules, Expected: 
            6.2-1, 1 check, or 
            7.1-3, 12704 checks, or 
            7.1-10, 1 check, or 
            7.1-11, 1 check, or 
            7.2-33, 3 checks, or 
            7.2-34, 4980 checks, or 
            7.18.3-1, 1 check, or 
            7.18.5-1, 11 checks, or 
            7.21.3.2-1, 31 checks, or 
            7.21.8-1, 26 checks</sch:assert>
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
            <sch:assert test='(contains(., "Problems with parsing metadata. XML parsing failure") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: Problems with parsing metadata. XML parsing failure' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
