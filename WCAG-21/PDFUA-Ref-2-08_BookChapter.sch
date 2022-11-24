<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">


    <!-- File: PDFUA-Ref-2-08_BookChapter.pdf -->


    <sch:pattern>name = "Checking the validationReport: document is not compliant"
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern>name = "Checking the validationReport: rules"
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '8')">Failed check, Expected: 8</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '4.1.2' and @testNumber = '22' and @failedChecks = '2') or 
            (@clause = '4.1.2' and @testNumber = '9' and @failedChecks = '9') or
            (@clause = '4.1.2' and @testNumber = '5' and @failedChecks = '1') or
            (@clause = '1.3.1' and @testNumber = '4' and @failedChecks = '180') or 
            (@clause = '1.3.1' and @testNumber = '1' and @failedChecks = '3') or 
            (@clause = '1.4.3' and @testNumber = '1' and @failedChecks = '123') or 
            (@clause = '1.3.1' and @testNumber = '2' and @failedChecks = '2') or 
            (@clause = '4.1.2' and @testNumber = '2' and @failedChecks = '1')">Failed rules, Expected: 
            4.1.2-22, 2 checks, or 
            4.1.2-9, 9 checks, or
            4.1.2-5, 1 check, or
            1.3.1-4, 180 checks, or 
            1.3.1-1, 3 checks, or 
            1.4.3-1, 123 checks, or 
            1.3.1-2, 2 checks, or 
            4.1.2-2, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

</sch:schema>
