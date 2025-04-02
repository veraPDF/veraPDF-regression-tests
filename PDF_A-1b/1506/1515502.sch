<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 1506 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/1506 -->
    <!-- File: 1515502.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '9')">Failed check, Expected: 9</sch:assert>	
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'CosDocument' or
            (@clause = '6.1.2' and @testNumber = '2' and @failedChecks = '1') or 
            (@clause = '6.1.3' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            6.1.2-2, 1 check, or 
            6.1.3-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'CosInfo' or
            (@clause = '6.7.3' and @testNumber = '2' and @failedChecks = '1') or 
            (@clause = '6.7.3' and @testNumber = '6' and @failedChecks = '1')">Failed rules, Expected: 
            6.7.3-2, 1 check, or 
            6.7.3-6, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'PDAnnot' or
            (@clause = '6.5.3' and @testNumber = '2' and @failedChecks = '6')">Failed rules, Expected: 
            6.5.3-2, 6 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'PDDeviceRGB' or
            (@clause = '6.2.3.3' and @testNumber = '1' and @failedChecks = '48')">Failed rules, Expected: 
            6.2.3.3-1, 48 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'PDDocument' or
            (@clause = '6.7.2' and @testNumber = '1' and @failedChecks = '1')">Failed rules, Expected: 
            6.7.2-1, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'PDFont' or
            (@clause = '6.3.4' and @testNumber = '1' and @failedChecks = '3')">Failed rules, Expected: 
            6.3.4-1, 3 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'PDXObject' or
            (@clause = '6.4' and @testNumber = '2' and @failedChecks = '1')">Failed rules, Expected: 
            6.4-2, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>


    <sch:pattern name = "Checking for the absence of logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="not(logs)">Failed check, Expected: no logs</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
