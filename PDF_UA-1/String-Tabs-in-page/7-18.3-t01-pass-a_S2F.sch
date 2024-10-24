<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# String Tabs in page -->
    <!-- https://github.com/orgs/veraPDF/projects/2/views/6?pane=issue&itemId=28318192 -->
    <!-- File: .\7-18.3-t01-pass-a_S2F.pdf -->


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
            <sch:assert test="(@clause = '7.18.3' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            7.18.3-1, 2 checks</sch:assert>
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
            <sch:assert test='(contains(., "Entry Tabs in page dictionary 6 0 obj does not have type name") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Entry Tabs in page dictionary 21 0 obj does not have type name") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: Entry Tabs in page dictionary 6 0 obj does not have type name' with 1 occurrences, or 
            'WARNING: Entry Tabs in page dictionary 21 0 obj does not have type name' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
