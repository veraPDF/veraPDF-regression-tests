<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

  
    <!-- File: Pexip_Infinity_Upgrading_Quickguide_v28.a.pdf -->


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
            <sch:assert test="(@clause = '4.1.2' and @testNumber = '22' and @failedChecks = '2') or 
            (@clause = '4.1.2' and @testNumber = '20' and @failedChecks = '1') or 
            (@clause = '7.3' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '7.2' and @testNumber = '20' and @failedChecks = '12') or 
            (@clause = '1.3.1' and @testNumber = '4' and @failedChecks = '23') or 
            (@clause = '2.4.9' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '1.4.3' and @testNumber = '1' and @failedChecks = '14') or 
            (@clause = '7.4.2' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            4.1.2-22, 2 checks, or 
            4.1.2-20, 1 check, or 
            7.3-1, 1 check, or 
            7.2-20, 12 checks, or 
            1.3.1-4, 23 checks, or 
            2.4.9-1, 1 check, or 
            1.4.3-1, 14 checks, or 
            7.4.2-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

</sch:schema>
