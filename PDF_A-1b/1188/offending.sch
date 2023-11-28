<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 1188 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/1188 -->
    <!-- File: offending.pdf -->

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
            <sch:assert test="@logsCount = '2'">Failed check, Expected: 2</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "The Top DICT does not begin with ROS operator") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Invalid embedded cff font. Charset range exceeds number of glyphs") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: The Top DICT does not begin with ROS operator' with 1 occurrences, or 
            'WARNING: Invalid embedded cff font. Charset range exceeds number of glyphs' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
