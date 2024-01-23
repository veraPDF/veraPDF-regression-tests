<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 1295 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/1295 -->
    <!-- File: r5-tokushoku-hogaku.pdf -->


    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '3')">Failed check, Expected: 3</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '5' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '7.1' and @testNumber = '10' and @failedChecks = '1') or 
            (@clause = '7.21.4.2' and @testNumber = '2' and @failedChecks = '1')">Failed rules, Expected: 
            5-1, 1 check, or 
            7.1-10, 1 check, or 
            7.21.4.2-2, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking for the absence of logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="not(logs)">Failed check, Expected: no logs</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
