<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 1357 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/1357 -->
    <!-- File: SKM_C360i23062710180.pdf -->

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
            <sch:assert test='(contains(., "Dictionary/Stream contains duplicated key /OutputCondition(object key = 12 0 obj, offset = 10810)") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: Dictionary/Stream contains duplicated key /OutputCondition(object key = 12 0 obj, offset = 10810)' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
