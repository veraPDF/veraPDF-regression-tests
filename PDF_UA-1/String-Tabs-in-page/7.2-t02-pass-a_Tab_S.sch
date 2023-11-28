<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# String Tabs in page -->
    <!-- https://github.com/orgs/veraPDF/projects/2?pane=issue&itemId=28318192 -->
    <!-- File: .\7.2-t02-pass-a_Tab_S.pdf -->

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
            <sch:assert test='(contains(., "Entry Tabs in page dictionary 4 0 obj does not have type name") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: Entry Tabs in page dictionary 4 0 obj does not have type name' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
