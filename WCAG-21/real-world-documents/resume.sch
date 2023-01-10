<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    
    <!-- File: resume.pdf -->


    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '8')">Failed check, Expected: 8</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '7.21.4.1' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '1.3.1' and @testNumber = '4' and @failedChecks = '8') or 
            (@clause = '1.4.3' and @testNumber = '1' and @failedChecks = '8') or 
            (@clause = '7.1' and @testNumber = '9' and @failedChecks = '1') or 
            (@clause = '7.5' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '1.4.10' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = '7.3' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = '5' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            7.21.4.1-1, 1 check, or 
            1.3.1-4, 8 checks, or 
            1.4.3-1, 8 checks, or 
            7.1-9, 1 check, or 
            7.5-1, 1 check, or 
            1.4.10-1, 2 checks, or 
            7.3-1, 2 checks, or 
            5-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

</sch:schema>
