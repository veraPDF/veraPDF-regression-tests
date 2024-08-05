<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 1414 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/1414 -->
    <!-- File: ua2wt1awt1rpdfa4.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="((@isCompliant = 'false' and contains(@profileName,'PDF/A-4')) or 
            (@isCompliant = 'true' and (contains(@profileName,'PDF/UA-2') or 
            contains(@profileName,'WTPDF 1.0 Accessibility') or contains(@profileName,'WTPDF 1.0 Reuse'))))">Failed check, 
            Expected: PDF/A-4, isCompliant=false or PDF/UA-2, WTPDF 1.0 Accessibility, WTPDF 1.0 Reuse, isCompliant=true</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '4' or @failedRules = '0')">Failed check, Expected: 4 or 0</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.1.3' and @testNumber = '4' and @failedChecks = '1') or 
            (@clause = '6.1.3' and @testNumber = '5' and @failedChecks = '1') or 
            (@clause = '6.2.4.3' and @testNumber = '4' and @failedChecks = '1') or 
            (@clause = '6.9' and @testNumber = '3' and @failedChecks = '4')">Failed rules, Expected: 
            6.1.3-4, 1 check, or 
            6.1.3-5, 1 check, or 
            6.2.4.3-4, 1 check, or 
            6.9-3, 4 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking for the absence of logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="not(logs)">Failed check, Expected: no logs</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
