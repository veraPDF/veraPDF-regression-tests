<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

   
    <!-- File: Letter_DOC.pdf -->


    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '12')">Failed check, Expected: 12</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '7.3' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = '7.1' and @testNumber = '10' and @failedChecks = '1') or 
            (@clause = '4.1.2' and @testNumber = '10' and @failedChecks = '1') or 
            (@clause = '7.21.4.1' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '7.1' and @testNumber = '8' and @failedChecks = '1') or 
            (@clause = '4.1.2' and @testNumber = '44' and @failedChecks = '1') or 
            (@clause = '4.1.2' and @testNumber = '43' and @failedChecks = '1') or 
            (@clause = '1.3.1' and @testNumber = '3' and @failedChecks = '1') or 
            (@clause = '1.4.3' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '4.1.2' and @testNumber = '41' and @failedChecks = '1') or 
            (@clause = '1.3.1' and @testNumber = '2' and @failedChecks = '1') or 
            (@clause = '1.4.10' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            7.3-1, 2 checks, or 
            7.1-10, 1 check, or 
            4.1.2-10, 1 check, or 
            7.21.4.1-1, 1 check, or 
            7.1-8, 1 check, or 
            4.1.2-44, 1 check, or 
            4.1.2-43, 1 check, or 
            1.3.1-3, 1 check, or 
            1.4.3-1, 1 check, or 
            4.1.2-41, 1 check, or 
            1.3.1-2, 1 check, or 
            1.4.10-1, 2 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

</sch:schema>
