<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issues# 89, 97, 134 -->
    <!-- https://github.com/veraPDF/veraPDF-wcag-algs/issues/134 -->
	<!-- https://github.com/veraPDF/veraPDF-wcag-algs/issues/97 -->
	<!-- https://github.com/veraPDF/veraPDF-wcag-algs/issues/89 -->
    <!-- File: test-document-6.pdf -->


    <sch:pattern>name = "Checking the validationReport: document is not compliant"
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern>name = "Checking the validationReport: rules"
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '11')">Failed check, Expected: 11</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '1.3.1' and @testNumber = '4' and @failedChecks = '6') or 
            (@clause = '1.3.1' and @testNumber = '2' and @failedChecks = '3') or 
            (@clause = '7.1' and @testNumber = '10' and @failedChecks = '1') or 
            (@clause = '4.1.2' and @testNumber = '23' and @failedChecks = '1') or 
            (@clause = '4.1.2' and @testNumber = '9' and @failedChecks = '5') or 
            (@clause = '4.1.2' and @testNumber = '10' and @failedChecks = '1') or 
            (@clause = '7.18.3' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = '5' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '4.1.2' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = '4.1.2' and @testNumber = '40' and @failedChecks = '3') or 
            (@clause = '4.1.2' and @testNumber = '21' and @failedChecks = '3')">Failed rules, Expected: 
            1.3.1-4, 6 checks, or 
            1.3.1-2, 3 checks, or 
            7.1-10, 1 check, or 
            4.1.2-23, 1 check, or 
            4.1.2-9, 5 checks, or 
            4.1.2-10, 1 check, or 
            7.18.3-1, 2 checks, or 
            5-1, 1 check, or 
            4.1.2-1, 2 checks, or 
            4.1.2-40, 3 checks, or 
            4.1.2-21, 3 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

</sch:schema>
