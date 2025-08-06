<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: 4648888.pdf -->

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
            <sch:assert test="(@clause = '6.1.3' and @testNumber = '3' and @failedChecks = '1') or 
            (@clause = '6.1.8' and @testNumber = '1' and @failedChecks = '88') or 
            (@clause = '6.2.4' and @testNumber = '3' and @failedChecks = '7') or 
            (@clause = '6.3.4' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = '6.3.5' and @testNumber = '1' and @failedChecks = '25') or 
            (@clause = '6.3.6' and @testNumber = '1' and @failedChecks = '72') or 
            (@clause = '6.7.11' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            6.1.3-3, 1 check, or 
            6.1.8-1, 88 checks, or 
            6.2.4-3, 7 checks, or 
            6.3.4-1, 7 checks, or 
            6.3.5-1, 25 checks, or 
            6.3.6-1, 72 checks, or 
            6.7.11-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking for the absence of logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="not(logs)">Failed check, Expected: no logs</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
