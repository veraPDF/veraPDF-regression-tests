<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: 2401.09965v1-tagged.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '9')">Failed check, Expected: 9</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '1.3.1' and @testNumber = '3' and @failedChecks = '48') or 
            (@clause = '1.3.1' and @testNumber = '4' and @failedChecks = '2813') or 
            (@clause = '1.4.3' and @testNumber = '1' and @failedChecks = '69') or 
            (@clause = '4.1.2' and @testNumber = '1' and @failedChecks = '29') or 
            (@clause = '4.1.2' and @testNumber = '9' and @failedChecks = '2') or 
            (@clause = '4.1.2' and @testNumber = '21' and @failedChecks = '6') or 
            (@clause = '4.1.2' and @testNumber = '22' and @failedChecks = '3') or 
            (@clause = '4.1.2' and @testNumber = '54' and @failedChecks = '3') or 
            (@clause = '7.7' and @testNumber = '1' and @failedChecks = '371')">Failed rules, Expected: 
            1.3.1-3, 48 checks, or 
            1.3.1-4, 2813 checks, or 
            1.4.3-1, 69 checks, or 
            4.1.2-1, 29 checks, or 
            4.1.2-9, 2 checks, or 
            4.1.2-21, 6 checks, or 
            4.1.2-22, 3 checks, or 
            4.1.2-54, 3 checks, or 
            7.7-1, 371 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

</sch:schema>
