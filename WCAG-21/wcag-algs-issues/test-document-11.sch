<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 76 -->
    <!-- https://github.com/veraPDF/veraPDF-wcag-algs/issues/76 -->
    <!-- File: test-document-11.pdf -->


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
            <sch:assert test="(@clause = '7.1' and @testNumber = '10' and @failedChecks = '1') or 
            (@clause = '7.4.2' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '5' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '7.1' and @testNumber = '9' and @failedChecks = '1')">Failed rules, Expected: 
            7.1-10, 1 check, or 
            7.4.2-1, 1 check, or 
            5-1, 1 check, or 
            7.1-9, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

</sch:schema>
