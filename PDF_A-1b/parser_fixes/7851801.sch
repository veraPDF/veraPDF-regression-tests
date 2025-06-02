<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: 7851801.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '15')">Failed check, Expected: 15</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.1.3' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.1.4' and @testNumber = '3' and @failedChecks = '1') or 
            (@clause = '6.1.7' and @testNumber = '1' and @failedChecks = '37') or 
            (@clause = '6.1.7' and @testNumber = '2' and @failedChecks = '318') or 
            (@clause = '6.1.8' and @testNumber = '1' and @failedChecks = '357') or 
            (@clause = '6.2.3.3' and @testNumber = '3' and @failedChecks = '239') or 
            (@clause = '6.3.4' and @testNumber = '1' and @failedChecks = '4') or 
            (@clause = '6.3.5' and @testNumber = '3' and @failedChecks = '5') or 
            (@clause = '6.4' and @testNumber = '2' and @failedChecks = '9') or 
            (@clause = '6.4' and @testNumber = '3' and @failedChecks = '1') or 
            (@clause = '6.7.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '2' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '3' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '5' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '7' and @failedChecks = '1')">Failed rules, Expected: 
            6.1.3-1, 1 check, or 
            6.1.4-3, 1 check, or 
            6.1.7-1, 37 checks, or 
            6.1.7-2, 318 checks, or 
            6.1.8-1, 357 checks, or 
            6.2.3.3-3, 239 checks, or 
            6.3.4-1, 4 checks, or 
            6.3.5-3, 5 checks, or 
            6.4-2, 9 checks, or 
            6.4-3, 1 check, or 
            6.7.2-1, 1 check, or 
            6.7.3-2, 1 check, or 
            6.7.3-3, 1 check, or 
            6.7.3-5, 1 check, or 
            6.7.3-7, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking for the absence of logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="not(logs)">Failed check, Expected: no logs</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
