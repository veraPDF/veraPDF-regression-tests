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
            <sch:assert test="(@failedRules = '7')">Failed check, Expected: 7</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.2.3.3' and @testNumber = '1' and @failedChecks = '266') or 
            (@clause = '6.2.4' and @testNumber = '3' and @failedChecks = '38') or 
            (@clause = '6.2.8' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.3.7' and @testNumber = '3' and @failedChecks = '4') or 
            (@clause = '6.6.1' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.7.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '7' and @failedChecks = '1')">Failed rules, Expected: 
            6.2.3.3-1, 266 checks, or 
            6.2.4-3, 38 checks, or 
            6.2.8-1, 1 check, or 
            6.3.7-3, 4 checks, or 
            6.6.1-1, 1 check, or 
            6.7.2-1, 1 check, or 
            6.7.3-7, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking for the absence of logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="not(logs)">Failed check, Expected: no logs</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
