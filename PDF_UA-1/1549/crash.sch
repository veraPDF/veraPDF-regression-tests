<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 1549 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/1549 -->
    <!-- File: crash.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '1')">Failed check, Expected: 1</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '7.18.4' and @testNumber = '2' and @failedChecks = '20')">Failed rules, Expected: 
            7.18.4-2, 20 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '4'">Failed check, Expected: 4</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Undefined color space /DeviceGray in a content stream") and @occurrences = "2" and @level = "SEVERE") or 
            (contains(., "Missing /Resources entry or inherited resources in the page dictionary") and @occurrences = "2" and @level = "WARNING")'>Invalid logs, Expected: 
            'SEVERE: Undefined color space /DeviceGray in a content stream' with 2 occurrences, or 
            'WARNING: Missing /Resources entry or inherited resources in the page dictionary' with 2 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
