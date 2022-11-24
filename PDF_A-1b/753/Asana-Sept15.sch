<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 753 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/753 -->
    <!-- File: Asana-Sept15.pdf -->


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
            (@clause = '6.1.3' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.2.3.3' and @testNumber = '1' and @failedChecks = '2130') or
            (@clause = '6.4' and @testNumber = '2' and @failedChecks = '1') or 
            (@clause = '6.2.3.3' and @testNumber = '3' and @failedChecks = '363')">Failed rules, Expected:
            6.7.2-1, 1 check, or 
            6.1.3-1, 1 check, or 
            6.2.3.3-1, 2130 checks, or
            6.4-2, 1 check, or 
            6.2.3.3-3, 363 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>name = "Checking for the absence of logs"
        <sch:rule context="/report/jobs/job">
            <sch:assert test="not(logs)">Failed check, Expected: no logs</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
