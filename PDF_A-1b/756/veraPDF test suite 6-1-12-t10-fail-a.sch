<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 756 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/756 -->
    <!-- File: veraPDF test suite 6-1-12-t10-fail-a.pdf -->


    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '2')">Failed check, Expected: 2</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.3.5' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = '6.1.12' and @testNumber = '10' and @failedChecks = '1')">Failed rules, Expected: 
            6.3.5-1, 1 check, or 
            6.1.12-10, 1 check</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '1'">Failed check, Expected: 1</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Can&apos;t parse CMap Adabe-Karea1-UCS2, using default") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected:
            'WARNING: Can't parse CMap Adabe-Karea1-UCS2, using default' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
