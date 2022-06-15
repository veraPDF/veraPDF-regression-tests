<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">


    <!-- File: PDFUA-Ref-2-01_Magazine-danish.pdf -->


    <sch:pattern>name = "Checking the validationReport: document is not compliant"
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern>name = "Checking the validationReport: rules"
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '12')">Failed check, Expected: 12</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '1.4.3' and @testNumber = '1' and @failedChecks = '65') or
            (@clause = '1.3.1' and @testNumber = '3' and @failedChecks = '2') or 
            (@clause = '1.3.1' and @testNumber = '4' and @failedChecks = '323') or 
            (@clause = '1.3.1' and @testNumber = '2' and @failedChecks = '3') or
            (@clause = '1.4.4' and @testNumber = '1' and @failedChecks = '23') or
            (@clause = '4.1.2')">Failed rules, Expected:
            4.1.2-20, 3 checks, or 
            4.1.2-10, 7 checks, or 
            1.4.3-1, 65 checks, or 
            1.3.1-3, 2 checks, or 
            1.3.1-4, 323 checks, or 
            4.1.2-5, 8 checks, or 
            4.1.2-15, 5 checks, or 
            4.1.2-21, 2 checks, or 
            1.3.1-2, 3 checks, or 
            4.1.2-22, 1 check, or 
            1.4.4-1, 23 checks, or 
            4.1.2-1, 1 check</sch:assert>
            <sch:assert test="(@clause != '4.1.2' or
            (@testNumber = '22' and @failedChecks = '1') or
            (@testNumber = '15' and @failedChecks = '5') or
            (@testNumber = '20' and @failedChecks = '4') or
            (@testNumber = '5' and @failedChecks = '8') or
            (@testNumber = '10' and @failedChecks = '7') or
            (@testNumber = '1' and @failedChecks = '1') or
            (@testNumber = '21' and @failedChecks = '2'))">Failed rules</sch:assert>
        </sch:rule>

    </sch:pattern>

</sch:schema>
