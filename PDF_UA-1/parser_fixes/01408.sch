<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: 01408.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '6')">Failed check, Expected: 6</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '5' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '7.1' and @testNumber = '3' and @failedChecks = '7462') or 
            (@clause = '7.1' and @testNumber = '12' and @failedChecks = '97') or 
            (@clause = '7.3' and @testNumber = '1' and @failedChecks = '50') or 
            (@clause = '7.4.2' and @testNumber = '1' and @failedChecks = '8')">Failed rules, Expected: 
            5-1, 1 check, or 
            6.2-1, 1 check, or 
            7.1-3, 7462 checks, or 
            7.1-12, 97 checks, or 
            7.3-1, 50 checks, or 
            7.4.2-1, 8 checks</sch:assert>
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
            <sch:assert test='(contains(., "MarkedInfo must be a &apos;COSDictionary&apos; but got: COS_UNDEFINED") and @occurrences = "3" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: MarkedInfo must be a 'COSDictionary' but got: COS_UNDEFINED' with 3 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
