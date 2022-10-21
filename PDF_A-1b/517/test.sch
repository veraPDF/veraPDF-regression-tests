<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 517 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/517 -->
    <!-- File: test.pdf -->


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
            <sch:assert test="(@clause = '6.7.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.2.3.3' and @testNumber = '1' and @failedChecks = '87') or
            (@clause = '6.1.3' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.1.7' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            6.7.2-1, 1 check, or 
            6.2.3.3-1, 87 checks, or
            6.1.3-1, 1 check, or 
            6.7.3-1, 1 check, or 
            6.1.7-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>name = "Checking for the absence of logs"
        <sch:rule context="/report/jobs/job">
            <sch:assert test="not(logs)">Failed check, Expected: no logs</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
