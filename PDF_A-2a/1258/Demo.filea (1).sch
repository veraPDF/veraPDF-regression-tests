<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 1258 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/1258 -->
    <!-- File: Demo.filea (1).pdf -->


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
            <sch:assert test="(@clause = '6.1.13' and @testNumber = '3' and @failedChecks = '1')">Failed rules, Expected: 
            6.1.13-3, 1 check</sch:assert>
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
            <sch:assert test='(contains(., "Invalid embedded cff font. Charset range exceeds number of glyphs") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "The Top DICT does not begin with ROS operator") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: Invalid embedded cff font. Charset range exceeds number of glyphs' with 1 occurrences, or 
            'WARNING: The Top DICT does not begin with ROS operator' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
