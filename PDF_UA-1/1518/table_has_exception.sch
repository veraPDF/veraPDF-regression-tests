<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 1518 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/1518 -->
    <!-- File: table_has_exception.pdf -->

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
            <sch:assert test="(@clause = '5' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '7.1' and @testNumber = '10' and @failedChecks = '1') or 
            (@clause = '7.2' and @testNumber = '10' and @failedChecks = '24') or 
            (@clause = '7.2' and @testNumber = '42' and @failedChecks = '1') or 
            (@clause = '7.18.1' and @testNumber = '3' and @failedChecks = '25') or 
            (@clause = '7.18.4' and @testNumber = '1' and @failedChecks = '37') or 
            (@clause = '7.21.4.1' and @testNumber = '1' and @failedChecks = '3') or 
            (@clause = '7.21.7' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            5-1, 1 check, or 
            7.1-10, 1 check, or 
            7.2-10, 24 checks, or 
            7.2-42, 1 check, or 
            7.18.1-3, 25 checks, or 
            7.18.4-1, 37 checks, or 
            7.21.4.1-1, 3 checks, or 
            7.21.7-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '2'">Failed check, Expected: 2</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "viewerPref must be a &apos;COSDictionary&apos; but got: COS_UNDEFINED") and @occurrences = "2" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: viewerPref must be a 'COSDictionary' but got: COS_UNDEFINED' with 2 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
