<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: 6187173.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '9')">Failed check, Expected: 9</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.1.4' and @testNumber = '3' and @failedChecks = '1') or 
            (@clause = '6.2.3.3' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.2.3.3' and @testNumber = '3' and @failedChecks = '354') or 
            (@clause = '6.3.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.3.2' and @testNumber = '3' and @failedChecks = '1') or 
            (@clause = '6.3.4' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = '6.4' and @testNumber = '3' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '8' and @failedChecks = '1') or 
            (@clause = '6.7.11' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            6.1.4-3, 1 check, or 
            6.2.3.3-1, 1 check, or 
            6.2.3.3-3, 354 checks, or 
            6.3.2-1, 1 check, or 
            6.3.2-3, 1 check, or 
            6.3.4-1, 4 checks, or 
            6.4-3, 1 check, or 
            6.7.3-8, 1 check, or 
            6.7.11-1, 1 check</sch:assert>
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
            <sch:assert test='(contains(., "Incorrect xref section(offset = 139506)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Incorrect xref section(offset = 139532)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Incorrect xref section(offset = 139558)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Incorrect xref section(offset = 139585)") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: Incorrect xref section(offset = 139506)' with 1 occurrences, or 
            'WARNING: Incorrect xref section(offset = 139532)' with 1 occurrences, or 
            'WARNING: Incorrect xref section(offset = 139558)' with 1 occurrences, or 
            'WARNING: Incorrect xref section(offset = 139585)' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
