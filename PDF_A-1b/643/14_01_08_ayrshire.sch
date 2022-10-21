<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 643 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/643 -->
    <!-- File: 14_01_08_ayrshire.pdf -->


    <sch:pattern>name = "Checking the validationReport: document is not compliant"
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern>name = "Checking the validationReport: rules"
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '4')">Failed check, Expected: 4</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.3.4' and @testNumber = '1' and @failedChecks = '6') or 
            (@clause = '6.2.3.3' and @testNumber = '3' and @failedChecks = '29503') or
            (@clause = '6.3.5' and @testNumber = '3' and @failedChecks = '2') or 
            (@clause = '6.7.9' and @testNumber = '2' and @failedChecks = '1')">Failed rules, Expected: 
            6.3.4-1, 6 checks, or 
            6.2.3.3-3, 29503 checks, or
            6.3.5-3, 2 checks, or 
            6.7.9-2, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>name = "Checking for the absence of logs"
        <sch:rule context="/report/jobs/job">
            <sch:assert test="not(logs)">Failed check, Expected: no logs</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
