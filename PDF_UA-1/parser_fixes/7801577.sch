<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: 7801577.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '8')">Failed check, Expected: 8</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '7.1' and @testNumber = '3' and @failedChecks = '260') or 
            (@clause = '7.1' and @testNumber = '8' and @failedChecks = '1') or 
            (@clause = '7.1' and @testNumber = '10' and @failedChecks = '1') or 
            (@clause = '7.1' and @testNumber = '11' and @failedChecks = '1') or 
            (@clause = '7.2' and @testNumber = '34' and @failedChecks = '193') or 
            (@clause = '7.21.7' and @testNumber = '2' and @failedChecks = '32') or 
            (@clause = '7.21.8' and @testNumber = '1' and @failedChecks = '3')">Failed rules, Expected: 
            6.2-1, 1 check, or 
            7.1-3, 260 checks, or 
            7.1-8, 1 check, or 
            7.1-10, 1 check, or 
            7.1-11, 1 check, or 
            7.2-34, 193 checks, or 
            7.21.7-2, 32 checks, or 
            7.21.8-1, 3 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '5'">Failed check, Expected: 5</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "MarkedInfo must be a &apos;COSDictionary&apos; but got: COS_UNDEFINED") and @occurrences = "3" and @level = "WARNING") or 
            (contains(., "viewerPref must be a &apos;COSDictionary&apos; but got: COS_UNDEFINED") and @occurrences = "2" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: MarkedInfo must be a 'COSDictionary' but got: COS_UNDEFINED' with 3 occurrences, or 
            'WARNING: viewerPref must be a 'COSDictionary' but got: COS_UNDEFINED' with 2 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
