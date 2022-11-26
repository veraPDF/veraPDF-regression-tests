<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 885 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/885 -->
    <!-- File: 6.1.3-01-fail-4.pdf -->

    <sch:pattern name = "Checking the validationReport: profile">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'true')">Failed check, Expected: isCompliant=true</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '2'">Failed check, Expected: 2</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Value of ID is not an array of two byte strings") and @occurrences = "2" and @level = "WARNING")'>Invalid logs, Expected:
            'WARNING: Value of ID is not an array of two byte strings' with 2 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
