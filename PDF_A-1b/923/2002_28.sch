<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 923 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/923 -->
    <!-- File: 2002_28.pdf -->

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
            <sch:assert test="@logsCount = '102'">Failed check, Expected: 102</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Invalid glyph code: -58") and @occurrences = "102" and @level = "WARNING")'>Invalid logs, Expected:
            'WARNING: Invalid glyph code: -58' with 102 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
