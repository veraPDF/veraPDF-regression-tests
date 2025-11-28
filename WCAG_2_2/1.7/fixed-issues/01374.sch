<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: 01374.pdf -->

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
            <sch:assert test="(@clause = '1.3.1' and @testNumber = '1' and @failedChecks = '13') or 
            (@clause = '1.3.1' and @testNumber = '2' and @failedChecks = '3') or 
            (@clause = '4.1.2' and @testNumber = '1' and @failedChecks = '11') or 
            (@clause = '4.1.2' and @testNumber = '2' and @failedChecks = '3') or 
            (@clause = '4.1.2' and @testNumber = '16' and @failedChecks = '2') or 
            (@clause = '7.1' and @testNumber = '3' and @failedChecks = '5') or 
            (@clause = '7.1' and @testNumber = '9' and @failedChecks = '1') or 
            (@clause = '7.1' and @testNumber = '10' and @failedChecks = '1')">Failed rules, Expected: 
            1.3.1-1, 13 checks, or 
            1.3.1-2, 3 checks, or 
            4.1.2-1, 11 checks, or 
            4.1.2-2, 3 checks, or 
            4.1.2-16, 2 checks, or 
            7.1-3, 5 checks, or 
            7.1-9, 1 check, or 
            7.1-10, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking for the absence of logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="not(logs)">Failed check, Expected: no logs</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
