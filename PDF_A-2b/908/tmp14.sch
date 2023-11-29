<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 908 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/908 -->
    <!-- File: tmp14.pdf -->

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
            <sch:assert test='(contains(., "Special graphics state operator (cm) inside Text object") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Incorrect bfrange in toUnicode CMap: the last byte of the string incremented past 255.") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: Special graphics state operator (cm) inside Text object' with 1 occurrences, or 
            'WARNING: Incorrect bfrange in toUnicode CMap: the last byte of the string incremented past 255.' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
