<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 140 -->
    <!-- https://github.com/veraPDF/veraPDF-wcag-algs/issues/140 -->
    <!-- File: PDFUA-Ref-2-07_FormalDocument.pdf -->


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
            <sch:assert test="(@clause = '2.4.9' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '4.1.2' and @testNumber = '5' and @failedChecks = '2') or 
            (@clause = '4.1.2' and @testNumber = '22' and @failedChecks = '20') or 
            (@clause = '4.1.2' and @testNumber = '2' and @failedChecks = '2') or 
            (@clause = '1.3.1' and @testNumber = '4' and @failedChecks = '36')">Failed rules, Expected: 
            2.4.9-1, 1 check, or 
            4.1.2-5, 2 checks, or 
            4.1.2-22, 20 checks, or 
            4.1.2-2, 2 checks, or 
            1.3.1-4, 36 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

</sch:schema>
