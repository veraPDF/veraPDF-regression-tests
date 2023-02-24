<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 1010 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/1010 -->
    <!-- File: felltypes-test.pdf -->


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
            <sch:assert test="(@clause = '6.7.3' and @testNumber = '7' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '3' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '5' and @failedChecks = '1') or 
            (@clause = '6.1.8' and @testNumber = '1' and @failedChecks = '11') or 
            (@clause = '6.3.5' and @testNumber = '3' and @failedChecks = '4') or 
            (@clause = '6.2.3.3' and @testNumber = '3' and @failedChecks = '12') or 
            (@clause = '6.7.3' and @testNumber = '2' and @failedChecks = '1') or 
            (@clause = '6.7.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '6' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '4' and @failedChecks = '1')">Failed rules, Expected: 
            6.7.3-7, 1 check, or 
            6.7.3-3, 1 check, or 
            6.7.3-5, 1 check, or 
            6.1.8-1, 11 checks, or 
            6.3.5-3, 4 checks, or 
            6.2.3.3-3, 12 checks, or 
            6.7.3-2, 1 check, or 
            6.7.2-1, 1 check, or 
            6.7.3-6, 1 check, or 
            6.7.3-4, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking for the absence of logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="not(logs)">Failed check, Expected: no logs</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
