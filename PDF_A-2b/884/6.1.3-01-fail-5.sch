<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 884 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/884 -->
    <!-- File: 6.1.3-01-fail-5.pdf -->

    <sch:pattern>name = "Checking the validationReport: profile"
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'true')">Failed check, Expected: isCompliant=true</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern>name = "Checking the logs"
        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '4'">Failed check, Expected: 4</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Value of ID key is not a string. Ignoring ID") and @occurrences = "2" and @level = "SEVERE") or
            (contains(., "Value of ID is not an array of two byte strings") and @occurrences = "2" and @level = "WARNING")'>Invalid logs, Expected:
            'SEVERE: Value of ID key is not a string. Ignoring ID' with 2 occurrences, or 
            'WARNING: Value of ID is not an array of two byte strings' with 2 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
