<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: intro_indesign_cs4.pdf -->


    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '14')">Failed check, Expected: 14</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '7.21.4.1' and @testNumber = '1' and @failedChecks = '6') or 
            (@clause = '4.1.2' and @testNumber = '22' and @failedChecks = '9') or 
            (@clause = '7.1' and @testNumber = '3' and @failedChecks = '25') or             
            (@clause = '7.2' and @testNumber = '20' and @failedChecks = '1') or 
            (@clause = '4.1.2' and @testNumber = '52' and @failedChecks = '2') or 
            (@clause = '1.3.1' and @testNumber = '2' and @failedChecks = '2') or 
            (@clause = '4.1.2' and @testNumber = '23' and @failedChecks = '2') or 
            (@clause = '7.1' and @testNumber = '10' and @failedChecks = '1') or 
            (@clause = '7.18.1' and @testNumber = '2' and @failedChecks = '25') or 
            (@clause = '4.1.2' and @testNumber = '21' and @failedChecks = '4') or 
            (@clause = '1.3.1' and @testNumber = '4' and @failedChecks = '196') or 
            (@clause = '1.4.8' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '1.4.10' and @testNumber = '1' and @failedChecks = '29') or 
            (@clause = '1.3.1' and @testNumber = '1' and @failedChecks = '25')">Failed rules, Expected: 
            7.21.4.1-1, 6 checks, or 
            4.1.2-22, 9 checks, or 
            7.1-3, 25 checks, or             
            7.2-20, 1 check, or 
            4.1.2-52, 2 checks, or 
            1.3.1-2, 2 checks, or 
            4.1.2-23, 2 checks, or 
            7.1-10, 1 check, or 
            7.18.1-2, 25 checks, or 
            4.1.2-21, 4 checks, or 
            1.3.1-4, 196 checks, or 
            1.4.8-1, 1 check, or 
            1.4.10-1, 29 checks, or 
            1.3.1-1, 25 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

</sch:schema>
