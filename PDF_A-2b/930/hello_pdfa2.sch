<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 930 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/930 -->
    <!-- File: hello_pdfa2.pdf -->

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
            <sch:assert test="@logsCount = '1'">Failed check, Expected: 1</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Error in parsing private data in Type 1 font: incorrect amount of charstings specified(offset = 29047 in stream 11 0 obj)") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: Error in parsing private data in Type 1 font: incorrect amount of charstings specified(offset = 29047 in stream 11 0 obj)' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
