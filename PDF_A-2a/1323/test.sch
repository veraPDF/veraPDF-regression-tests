<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 1323 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/1323 -->
    <!-- File: test.pdf -->


    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '5')">Failed check, Expected: 5</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.2.11.4.2' and @testNumber = '2' and @failedChecks = '1') or 
            (@clause = '6.2.4.3' and @testNumber = '4' and @failedChecks = '1') or 
            (@clause = '6.7.3.3' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.6.2.1' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.7.2.2' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            6.2.11.4.2-2, 1 check, or 
            6.2.4.3-4, 1 check, or 
            6.7.3.3-1, 1 check, or 
            6.6.2.1-1, 1 check, or 
            6.7.2.2-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking for the absence of logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="not(logs)">Failed check, Expected: no logs</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
