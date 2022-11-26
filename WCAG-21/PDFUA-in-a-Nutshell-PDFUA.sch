<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">


    <!-- File: PDFUA-in-a-Nutshell-PDFUA.pdf -->


    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '14')">Failed check, Expected: 12</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '4.1.2' or
            (@clause = '4.1.1' and @testNumber = '1' and @failedChecks = '20') or
            (@clause = '7.1' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '7.21.4.2' and @testNumber = '2' and @failedChecks = '1') or 
            (@clause = '7.2' and @testNumber = '11' and @failedChecks = '1') or 
            (@clause = '7.5' and @testNumber = '1' and @failedChecks = '8') or 
            (@clause = '1.3.1' and @testNumber = '2' and @failedChecks = '1') or 
            (@clause = '1.3.1' and @testNumber = '4' and @failedChecks = '86') or
            (@clause = '1.4.3' and @testNumber = '1' and @failedChecks = '27'))">Failed rules, Expected:
            4.1.1-1, 20 checks, or
            7.1-1, 1 check, or
            7.21.4.2-2, 1 check, or
            7.2-11, 1 check, or
            7.5-1, 8 checks, or
            1.3.1-2, 1 check, or
            1.3.1-4, 86 checks, or
            1.4.3-1, 27 checks, or
            1.4.2-x, y checks</sch:assert>
        </sch:rule>
        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause != '4.1.2' or
            (@testNumber = '23' and @failedChecks = '1') or
            (@testNumber = '1' and @failedChecks = '14') or
            (@testNumber = '10' and @failedChecks = '6') or
            (@testNumber = '41' and @failedChecks = '1') or
            (@testNumber = '43' and @failedChecks = '2') or                  
            (@testNumber = '9' and @failedChecks = '29'))">Failed rules, Expected:
            4.1.2-23, 1 check, or
            4.1.2-1, 14 checks, or
            4.1.2-10, 6 checks, or
            4.1.2-41, 1 checks, or
            4.1.2-43, 2 checks, or                        
            4.1.2-9, 29 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

</sch:schema>
