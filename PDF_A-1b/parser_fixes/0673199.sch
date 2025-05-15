<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: 0673199.pdf -->

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
            <sch:assert test="(@clause = '6.1.4' and @testNumber = '3' and @failedChecks = '1') or 
            (@clause = '6.1.8' and @testNumber = '1' and @failedChecks = '5627') or 
            (@clause = '6.2.3.3' and @testNumber = '1' and @failedChecks = '17337') or 
            (@clause = '6.2.3.3' and @testNumber = '3' and @failedChecks = '660218') or 
            (@clause = '6.2.4' and @testNumber = '3' and @failedChecks = '38') or 
            (@clause = '6.3.4' and @testNumber = '1' and @failedChecks = '42') or 
            (@clause = '6.3.5' and @testNumber = '3' and @failedChecks = '5') or 
            (@clause = '6.4' and @testNumber = '3' and @failedChecks = '41') or 
            (@clause = '6.7.3' and @testNumber = '8' and @failedChecks = '1') or 
            (@clause = '6.7.11' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            6.1.4-3, 1 check, or 
            6.1.8-1, 5627 checks, or 
            6.2.3.3-1, 17337 checks, or 
            6.2.3.3-3, 660218 checks, or 
            6.2.4-3, 38 checks, or 
            6.3.4-1, 42 checks, or 
            6.3.5-3, 5 checks, or 
            6.4-3, 41 checks, or 
            6.7.3-8, 1 check, or 
            6.7.11-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking for the absence of logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="not(logs)">Failed check, Expected: no logs</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
