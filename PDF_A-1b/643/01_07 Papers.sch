<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 643 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/643 -->
    <!-- File: 01_07 Papers.pdf -->


    <sch:pattern>name = "Checking the validationReport: document is not compliant"
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern>name = "Checking the validationReport: rules"
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '5')">Failed check, Expected: 5</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.3.4' and @testNumber = '1' and @failedChecks = '63') or 
            (@clause = '6.2.3.3' and @testNumber = '3' and @failedChecks = '38132') or
            (@clause = '6.7.11' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.3.5' and @testNumber = '3' and @failedChecks = '4') or 
            (@clause = '6.1.13' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            6.3.4-1, 63 checks, or 
            6.2.3.3-3, 38132 checks, or
            6.7.11-1, 1 check, or 
            6.3.5-3, 4 checks, or 
            6.1.13-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>name = "Checking for the absence of logs"
        <sch:rule context="/report/jobs/job">
            <sch:assert test="not(logs)">Failed check, Expected: no logs</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
