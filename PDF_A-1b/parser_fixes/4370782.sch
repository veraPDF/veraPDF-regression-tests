<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: 4370782.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '11')">Failed check, Expected: 11</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.2.3.3' and @testNumber = '1' and @failedChecks = '150') or 
            (@clause = '6.2.3.3' and @testNumber = '3' and @failedChecks = '2') or 
            (@clause = '6.2.8' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.3.4' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = '6.7.3' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '2' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '3' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '6' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '7' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '8' and @failedChecks = '1') or 
            (@clause = '6.7.11' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            6.2.3.3-1, 150 checks, or 
            6.2.3.3-3, 2 checks, or 
            6.2.8-1, 1 check, or 
            6.3.4-1, 2 checks, or 
            6.7.3-1, 1 check, or 
            6.7.3-2, 1 check, or 
            6.7.3-3, 1 check, or 
            6.7.3-6, 1 check, or 
            6.7.3-7, 1 check, or 
            6.7.3-8, 1 check, or 
            6.7.11-1, 1 check</sch:assert>
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
            <sch:assert test='(contains(., "Type 0 Function does not contain the Size entry or the Size entry has incorrect value") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: Type 0 Function does not contain the Size entry or the Size entry has incorrect value' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
