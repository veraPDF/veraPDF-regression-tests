<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 773 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/773 -->
    <!-- File: ICC-Alternate-1.pdf -->

    <sch:pattern name = "Checking the validationReport: document is compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'true')">Failed check, Expected: isCompliant=true</sch:assert>
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
            <sch:assert test='(contains(., "Alternate color space does not match the number of components in the ICC profile") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected:
            'WARNING: Alternate color space does not match the number of components in the ICC profile' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
