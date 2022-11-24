<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 1117 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/1117 -->
    <!-- File: FULLTEXT01.pdf -->


    <sch:pattern>name = "Checking the validationReport: document is not compliant"
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern>name = "Checking the validationReport: rules"
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '9')">Failed check, Expected: 9</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.7.11' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.3.4' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.4' and @testNumber = '5' and @failedChecks = '1') or 
            (@clause = '6.2.3.3' and @testNumber = '3' and @failedChecks = '19254') or
            (@clause = '6.3.5' and @testNumber = '3' and @failedChecks = '3') or 
            (@clause = '6.4' and @testNumber = '3' and @failedChecks = '34') or 
            (@clause = '6.4' and @testNumber = '2' and @failedChecks = '7') or 
            (@clause = '6.2.4' and @testNumber = '3' and @failedChecks = '4') or 
            (@clause = '6.2.3.3' and @testNumber = '1' and @failedChecks = '117')">Failed rules, Expected:
            6.7.11-1, 1 check, or 
            6.3.4-1, 1 check, or 
            6.4-5, 1 check, or 
            6.2.3.3-3, 19254 checks, or
            6.3.5-3, 3 checks, or 
            6.4-3, 34 checks, or 
            6.4-2, 7 checks, or 
            6.2.4-3, 4 checks, or 
            6.2.3.3-1, 117 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>name = "Checking for the absence of logs"
        <sch:rule context="/report/jobs/job">
            <sch:assert test="not(logs)">Failed check, Expected: no logs</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
