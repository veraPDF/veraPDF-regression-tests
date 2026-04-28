<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 1568 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/1568 -->
    <!-- File: getCmapParserNPE.pdf -->

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
            <sch:assert test="(@clause = '6.1.7.1' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = '6.1.7.1' and @testNumber = '2' and @failedChecks = '4') or 
            (@clause = '6.2.11.4.1' and @testNumber = '2' and @failedChecks = '7') or 
            (@clause = '6.2.11.5' and @testNumber = '1' and @failedChecks = '7') or 
            (@clause = '6.2.11.6' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            6.1.7.1-1, 2 checks, or 
            6.1.7.1-2, 4 checks, or 
            6.2.11.4.1-2, 7 checks, or 
            6.2.11.5-1, 7 checks, or 
            6.2.11.6-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

</sch:schema>
